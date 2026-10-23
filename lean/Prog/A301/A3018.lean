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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A301800: Expansion of Product_{k>=1} (1 + x^k)^A000593(k).

The programs for A301800, there is no canonical definition to state claims against.
-/

/-! ## A301800.P5846270251213883329

`A193592(A193592(n)+A071739(n))`
-/

namespace A301800.P5846270251213883329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A193592 n + A071739 n).toNat

end

end A301800.P5846270251213883329

/-! ## A301800.P3838937633352839707

`A090104(A374679(n)+A342337(n))`
-/

namespace A301800.P3838937633352839707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090104 (A374679 n + A342337 n).toNat

end

end A301800.P3838937633352839707

/-!
# A301802: Number of permutations of {1, 2, ..., n} such that no k+2 points lie on a polynomial of degree k.

The programs for A301802, there is no canonical definition to state claims against.
-/

/-! ## A301802.P15941277096159404525

`A049100(3^n*(2*n+1))`
-/

namespace A301802.P15941277096159404525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049100 (3 ^ n * (2 * n + 1))

end

end A301802.P15941277096159404525

/-! ## A301802.P15234589367674180479

`A325763(A383803(n))`
-/

namespace A301802.P15234589367674180479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (A383803 n).toNat

end

end A301802.P15234589367674180479

/-! ## A301802.P12538574704344514565

`A006047(A270662(n)-1)`
-/

namespace A301802.P12538574704344514565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A270662 n - 1).toNat

end

end A301802.P12538574704344514565

/-!
# A301804: Sequence satisfies: 1 = Sum_{n>=1} 2^(n*(n-1)) / a(n)^n, with a(1) = 2, by a greedy algorithm.

The programs for A301804, there is no canonical definition to state claims against.
-/

/-! ## A301804.P1626733666003424475

`A109802(A045623(n))+C(2, n+2)`
-/

namespace A301804.P1626733666003424475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109802 (A045623 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A301804.P1626733666003424475

/-! ## A301804.P5620954413207235325

`A330064(A056273(n))+A000384(n)`
-/

namespace A301804.P5620954413207235325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330064 (A056273 n).toNat + A000384 n

end

end A301804.P5620954413207235325

/-!
# A301806: Numbers k such that the concatenation of 2^k - 1 and 2^(k - 1) - 1 is prime.

The programs for A301806, there is no canonical definition to state claims against.
-/

/-! ## A301806.P4886043147549334610

`record[A126759(record[A046700(n+1)])]`
-/

namespace A301806.P4886043147549334610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046700 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301806.P4886043147549334610

/-! ## A301806.P4441165398875819498

`∑[A348611(A243505(n+1))]+1`
-/

namespace A301806.P4441165398875819498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348611 (A243505 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A301806.P4441165398875819498

/-! ## A301806.P929590597465847946

`record[A371097(3*n+2)+A007318(n)]`
-/

namespace A301806.P929590597465847946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371097 (3 * n + 2) + A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301806.P929590597465847946

/-! ## A301806.P12319435042143699253

`A226498(A166493(n+1))+A166493(A226498(n+4))`
-/

namespace A301806.P12319435042143699253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226498 (A166493 (n + 1)).toNat + A166493 (A226498 (n + 4)).toNat

end

end A301806.P12319435042143699253

/-!
# A301809: Group the natural numbers such that the first group is (1) then (2),(3),(4,5),(6,7,8),... with the n-th group containing F(n) sequential terms where F(n) is the n-th Fibonacci number (A000045(n)). Sequence gives the sum of terms in the n-th group.

The programs for A301809, the canonical program `A301809.P14923182414457148992` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301809 has offset 1).

The definition of A301809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301809.P14923182414457148992

`3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=9, a(4)=21, a(5)=55`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301809

/-- `3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` -/
def P14923182414457148992.Spec : Prop :=
  ∀ n, P14923182414457148992.a n = A301809 (n + 1)

theorem P14923182414457148992.correct : P14923182414457148992.Spec := by
  intro n
  simp only [A301809, Nat.add_sub_cancel]

end A301809

/-! ## A301809.P6183190329521138680

`record[A161762(n+1)-A000045(n)]`
-/

namespace A301809.P6183190329521138680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161762 (n + 1) - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301809.P6183190329521138680

namespace A301809

/-- `record[A161762(n+1)-A000045(n)]` -/
def P6183190329521138680.Spec : Prop :=
  ∀ n, P6183190329521138680.a n = A301809 (n + 1)

end A301809

/-! ## A301809.P14514487022711368831

`A109454(n+1)+A000045(n+2)`
-/

namespace A301809.P14514487022711368831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109454 (n + 1) + A000045 (n + 2)

end

end A301809.P14514487022711368831

namespace A301809

/-- `A109454(n+1)+A000045(n+2)` -/
def P14514487022711368831.Spec : Prop :=
  ∀ n, P14514487022711368831.a n = A301809 (n + 1)

end A301809

/-! ## A301809.P2519625347994105173

`A060312(A004280(n+1))+A007598(n)`
-/

namespace A301809.P2519625347994105173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (A004280 (n + 1)).toNat + A007598 n

end

end A301809.P2519625347994105173

namespace A301809

/-- `A060312(A004280(n+1))+A007598(n)` -/
def P2519625347994105173.Spec : Prop :=
  ∀ n, P2519625347994105173.a n = A301809 (n + 1)

end A301809

/-! ## A301809.P16902946651407917624

`record[Δ[A032441(n)]]`
-/

namespace A301809.P16902946651407917624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032441 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301809.P16902946651407917624

namespace A301809

/-- `record[Δ[A032441(n)]]` -/
def P16902946651407917624.Spec : Prop :=
  ∀ n, P16902946651407917624.a n = A301809 (n + 1)

end A301809

/-! ## A301809.P1865410642306654802

`record[Δ[A033192(n)]]`
-/

namespace A301809.P1865410642306654802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301809.P1865410642306654802

namespace A301809

/-- `record[Δ[A033192(n)]]` -/
def P1865410642306654802.Spec : Prop :=
  ∀ n, P1865410642306654802.a n = A301809 (n + 1)

end A301809

/-! ## A301809.P8760036142968127541

`A051450(n+1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A301809.P8760036142968127541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A051450 (n + 1) - a (n - 1)

end

end A301809.P8760036142968127541

namespace A301809

/-- `A051450(n+1)-a(n-1)` -/
def P8760036142968127541.Spec : Prop :=
  ∀ n, P8760036142968127541.a n = A301809 (n + 1)

end A301809

/-! ## A301809.P17800741370470824298

`A060312(2*n+1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A301809.P17800741370470824298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A060312 (2 * n + 1) - a (n - 1)

end

end A301809.P17800741370470824298

namespace A301809

/-- `A060312(2*n+1)-a(n-1)` -/
def P17800741370470824298.Spec : Prop :=
  ∀ n, P17800741370470824298.a n = A301809 (n + 1)

end A301809

/-! ## A301809.P4595881897515653298

`record[Δ[A191797(n)+A000045(n)]]`
-/

namespace A301809.P4595881897515653298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n + A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301809.P4595881897515653298

namespace A301809

/-- `record[Δ[A191797(n)+A000045(n)]]` -/
def P4595881897515653298.Spec : Prop :=
  ∀ n, P4595881897515653298.a n = A301809 (n + 1)

end A301809

/-! ## A301809.P13075813551066246255

`A000007(n)+Δ[A033192(n+1)]`
-/

namespace A301809.P13075813551066246255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A301809.P13075813551066246255

namespace A301809

/-- `A000007(n)+Δ[A033192(n+1)]` -/
def P13075813551066246255.Spec : Prop :=
  ∀ n, P13075813551066246255.a n = A301809 (n + 1)

end A301809

/-! ## A301809.P12374554125978971242

`record[A032441(n+1)-A032441(n)]`
-/

namespace A301809.P12374554125978971242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032441 (n + 1) - A032441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301809.P12374554125978971242

namespace A301809

/-- `record[A032441(n+1)-A032441(n)]` -/
def P12374554125978971242.Spec : Prop :=
  ∀ n, P12374554125978971242.a n = A301809 (n + 1)

end A301809

/-! ## A301809.P15118766265683031123

`record[A033192(n+1)-A033192(n)]`
-/

namespace A301809.P15118766265683031123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (n + 1) - A033192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301809.P15118766265683031123

namespace A301809

/-- `record[A033192(n+1)-A033192(n)]` -/
def P15118766265683031123.Spec : Prop :=
  ∀ n, P15118766265683031123.a n = A301809 (n + 1)

end A301809

/-! ## A301809.P13994918371701152560

`record[Δ[C(A001611(n), 2)]]`
-/

namespace A301809.P13994918371701152560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001611 n).toNat 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301809.P13994918371701152560

namespace A301809

/-- `record[Δ[C(A001611(n), 2)]]` -/
def P13994918371701152560.Spec : Prop :=
  ∀ n, P13994918371701152560.a n = A301809 (n + 1)

end A301809

/-! ## A301809.P17260440171673100790

`Δ[C(A155112(A000124(n))+1, 2)]`
-/

namespace A301809.P17260440171673100790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A155112 (A000124 n).toNat + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A301809.P17260440171673100790

namespace A301809

/-- `Δ[C(A155112(A000124(n))+1, 2)]` -/
def P17260440171673100790.Spec : Prop :=
  ∀ n, P17260440171673100790.a n = A301809 (n + 1)

end A301809

/-!
# A301812: Numbers of the form p^2 - 1 where p is a prime of the form 3*k-1 (A003627).

The programs for A301812, the canonical program `A301812.P16700024061125117281` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301812 has offset 1).

The definition of A301812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A301812.P16700024061125117281

`A003627(n+1)²-1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A301812

/-- `A003627(n+1)²-1` -/
def P16700024061125117281.Spec : Prop :=
  ∀ n, P16700024061125117281.a n = A301812 (n + 1)

theorem P16700024061125117281.correct : P16700024061125117281.Spec := by
  intro n
  simp only [A301812, Nat.add_sub_cancel]

end A301812

/-! ## A301812.P5852087072317406482

`p?[3*n-1]²-1`
-/

namespace A301812.P5852087072317406482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 1

end

end A301812.P5852087072317406482

namespace A301812

/-- `p?[3*n-1]²-1` -/
def P5852087072317406482.Spec : Prop :=
  ∀ n, P5852087072317406482.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P14951858290879563186

`p?[3*n-1]^2-1`
-/

namespace A301812.P14951858290879563186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 1

end

end A301812.P14951858290879563186

namespace A301812

/-- `p?[3*n-1]^2-1` -/
def P14951858290879563186.Spec : Prop :=
  ∀ n, P14951858290879563186.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P3882793497389111238

`(A112774(n+1)/2)²-1`
-/

namespace A301812.P3882793497389111238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A112774 (n + 1) : ℚ) / 2) ^ 2 - 1

end

end A301812.P3882793497389111238

namespace A301812

/-- `(A112774(n+1)/2)²-1` -/
def P3882793497389111238.Spec : Prop :=
  ∀ n, P3882793497389111238.a n = (A301812 (n + 1) : ℚ)

end A301812

/-! ## A301812.P6631039169703909654

`(A007645(n+1)-A171715(n+1))²-1`
-/

namespace A301812.P6631039169703909654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007645 (n + 1) - A171715 (n + 1)) ^ 2 - 1

end

end A301812.P6631039169703909654

namespace A301812

/-- `(A007645(n+1)-A171715(n+1))²-1` -/
def P6631039169703909654.Spec : Prop :=
  ∀ n, P6631039169703909654.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P1376692098700331546

`A045309(A065475(n+1))²-1`
-/

namespace A301812.P1376692098700331546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (A065475 (n + 1)).toNat ^ 2 - 1

end

end A301812.P1376692098700331546

namespace A301812

/-- `A045309(A065475(n+1))²-1` -/
def P1376692098700331546.Spec : Prop :=
  ∀ n, P1376692098700331546.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P7856661185964947865

`record[p?[A014682(n)]²-1]`
-/

namespace A301812.P7856661185964947865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301812.P7856661185964947865

namespace A301812

/-- `record[p?[A014682(n)]²-1]` -/
def P7856661185964947865.Spec : Prop :=
  ∀ n, P7856661185964947865.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P1798605733933878566

`A084920(A091177(n+1))`
-/

namespace A301812.P1798605733933878566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (A091177 (n + 1)).toNat

end

end A301812.P1798605733933878566

namespace A301812

/-- `A084920(A091177(n+1))` -/
def P1798605733933878566.Spec : Prop :=
  ∀ n, P1798605733933878566.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P15773426903595068792

`record[A006530(3*n+2)²-1]`
-/

namespace A301812.P15773426903595068792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 2) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301812.P15773426903595068792

namespace A301812

/-- `record[A006530(3*n+2)²-1]` -/
def P15773426903595068792.Spec : Prop :=
  ∀ n, P15773426903595068792.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P3165885621394308385

`record[A020639(3*n+2)²]-1`
-/

namespace A301812.P3165885621394308385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A301812.P3165885621394308385

namespace A301812

/-- `record[A020639(3*n+2)²]-1` -/
def P3165885621394308385.Spec : Prop :=
  ∀ n, P3165885621394308385.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P8860933431540107730

`(record[A000010(3*n+2)]+1)²-1`
-/

namespace A301812.P8860933431540107730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) ^ 2 - 1

end

end A301812.P8860933431540107730

namespace A301812

/-- `(record[A000010(3*n+2)]+1)²-1` -/
def P8860933431540107730.Spec : Prop :=
  ∀ n, P8860933431540107730.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P3869446243985686919

`A006530(A112774(n+1))²-1`
-/

namespace A301812.P3869446243985686919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A112774 (n + 1)).toNat ^ 2 - 1

end

end A301812.P3869446243985686919

namespace A301812

/-- `A006530(A112774(n+1))²-1` -/
def P3869446243985686919.Spec : Prop :=
  ∀ n, P3869446243985686919.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P10885727305489673059

`∩[A000040(n+1), A004612(n+1)]²-1`
-/

namespace A301812.P10885727305489673059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 : ℤ) - 1

end

end A301812.P10885727305489673059

namespace A301812

/-- `∩[A000040(n+1), A004612(n+1)]²-1` -/
def P10885727305489673059.Spec : Prop :=
  ∀ n, P10885727305489673059.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P2979703038611653776

`A152751(A087370(n+1))`
-/

namespace A301812.P2979703038611653776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 (A087370 (n + 1)).toNat

end

end A301812.P2979703038611653776

namespace A301812

/-- `A152751(A087370(n+1))` -/
def P2979703038611653776.Spec : Prop :=
  ∀ n, P2979703038611653776.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P10727936985759737847

`∩[A084920(n+1), A152751(n)]`
-/

namespace A301812.P10727936985759737847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301812.P10727936985759737847

namespace A301812

/-- `∩[A084920(n+1), A152751(n)]` -/
def P10727936985759737847.Spec : Prop :=
  ∀ n, (P10727936985759737847.a n : ℤ) = A301812 (n + 1)

end A301812

/-! ## A301812.P18262986658122120503

`A016789(A024893(n+1))²-1`
-/

namespace A301812.P18262986658122120503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A024893 (n + 1)).toNat ^ 2 - 1

end

end A301812.P18262986658122120503

namespace A301812

/-- `A016789(A024893(n+1))²-1` -/
def P18262986658122120503.Spec : Prop :=
  ∀ n, P18262986658122120503.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P3285750378214870167

`∩[A000040(n+1), A016789(n)]²-1`
-/

namespace A301812.P3285750378214870167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 : ℤ) - 1

end

end A301812.P3285750378214870167

namespace A301812

/-- `∩[A000040(n+1), A016789(n)]²-1` -/
def P3285750378214870167.Spec : Prop :=
  ∀ n, P3285750378214870167.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P7350392694790481535

`∩[A000040(n+1), A022429(n)]²-1`
-/

namespace A301812.P7350392694790481535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022429 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 : ℤ) - 1

end

end A301812.P7350392694790481535

namespace A301812

/-- `∩[A000040(n+1), A022429(n)]²-1` -/
def P7350392694790481535.Spec : Prop :=
  ∀ n, P7350392694790481535.a n = A301812 (n + 1)

end A301812

/-! ## A301812.P1069232934326022920

`∩[A390157(n+1), A060615(n)]`
-/

namespace A301812.P1069232934326022920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060615 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301812.P1069232934326022920

namespace A301812

/-- `∩[A390157(n+1), A060615(n)]` -/
def P1069232934326022920.Spec : Prop :=
  ∀ n, (P1069232934326022920.a n : ℤ) = A301812 (n + 1)

end A301812

/-! ## A301812.P12899139777633545446

`∩[A084920(n+1), A390157(n+1)]`
-/

namespace A301812.P12899139777633545446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301812.P12899139777633545446

namespace A301812

/-- `∩[A084920(n+1), A390157(n+1)]` -/
def P12899139777633545446.Spec : Prop :=
  ∀ n, (P12899139777633545446.a n : ℤ) = A301812 (n + 1)

end A301812

/-!
# A301818: Number of n X n 0..1 arrays with every element equal to 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301818, there is no canonical definition to state claims against.
-/

/-! ## A301818.P18134618494505848650

`A301823(∑[4*n]+1)`
-/

namespace A301818.P18134618494505848650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301818.P18134618494505848650

/-! ## A301818.P13734697864691822944

`record[A003982(n)*A301823(n+1)]`
-/

namespace A301818.P13734697864691822944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A301823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301818.P13734697864691822944

/-! ## A301818.P13919619931156935872

`A301823(A001844(n))+A025437(n)`
-/

namespace A301818.P13919619931156935872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A001844 n).toNat + A025437 n

end

end A301818.P13919619931156935872

/-! ## A301818.P16851514443504799068

`or(A025460(n), A301823(A001844(n)))`
-/

namespace A301818.P16851514443504799068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025460 n) (A301823 (A001844 n).toNat)

end

end A301818.P16851514443504799068

/-! ## A301818.P1818834235932332393

`A008835(n+1)*A301823(A001844(n))`
-/

namespace A301818.P1818834235932332393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A301823 (A001844 n).toNat

end

end A301818.P1818834235932332393

/-!
# A301819: Number of nX4 0..1 arrays with every element equal to 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301819, the canonical program `A301819.P8751658325695026801` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301819 has offset 1).

The definition of A301819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301819.P8751658325695026801

`6*a(n-1)-13*a(n-2)+13*a(n-3)-6*a(n-4)+a(n-5)` with `a(0)=2, a(1)=8, a(2)=25, a(3)=68, a(4)=177`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301819

/-- `6*a(n-1)-13*a(n-2)+13*a(n-3)-6*a(n-4)+a(n-5)` -/
def P8751658325695026801.Spec : Prop :=
  ∀ n, P8751658325695026801.a n = A301819 (n + 1)

theorem P8751658325695026801.correct : P8751658325695026801.Spec := by
  intro n
  simp only [A301819, Nat.add_sub_cancel]

end A301819

/-! ## A301819.P8470417384699625530

`∑[n]+A106729(n)-3`
-/

namespace A301819.P8470417384699625530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A106729 n - 3)

end

end A301819.P8470417384699625530

namespace A301819

/-- `∑[n]+A106729(n)-3` -/
def P8470417384699625530.Spec : Prop :=
  ∀ n, P8470417384699625530.a n = A301819 (n + 1)

end A301819

/-! ## A301819.P2832912014004827828

`A289107(2*n)+∑[n]`
-/

namespace A301819.P2832912014004827828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289107 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A301819.P2832912014004827828

namespace A301819

/-- `A289107(2*n)+∑[n]` -/
def P2832912014004827828.Spec : Prop :=
  ∀ n, P2832912014004827828.a n = A301819 (n + 1)

end A301819

/-! ## A301819.P4616827515069838162

`∑[record[A229339(n+3)]+n]`
-/

namespace A301819.P4616827515069838162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229339 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301819.P4616827515069838162

namespace A301819

/-- `∑[record[A229339(n+3)]+n]` -/
def P4616827515069838162.Spec : Prop :=
  ∀ n, P4616827515069838162.a n = A301819 (n + 1)

end A301819

/-! ## A301819.P4301117945067462105

`∑[A201157(n+1)+n]+2`
-/

namespace A301819.P4301117945067462105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A301819.P4301117945067462105

namespace A301819

/-- `∑[A201157(n+1)+n]+2` -/
def P4301117945067462105.Spec : Prop :=
  ∀ n, P4301117945067462105.a n = A301819 (n + 1)

end A301819

/-! ## A301819.P1090630289264338245

`∑[5*A001906(n)-(1-n)]+n+3`
-/

namespace A301819.P1090630289264338245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001906 n - (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 3

end

end A301819.P1090630289264338245

namespace A301819

/-- `∑[5*A001906(n)-(1-n)]+n+3` -/
def P1090630289264338245.Spec : Prop :=
  ∀ n, P1090630289264338245.a n = A301819 (n + 1)

end A301819

/-! ## A301819.P10070185017140758462

`2*∑[(record[A203976(n+1)]+n)/2]+1`
-/

namespace A301819.P10070185017140758462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A301819.P10070185017140758462

namespace A301819

/-- `2*∑[(record[A203976(n+1)]+n)/2]+1` -/
def P10070185017140758462.Spec : Prop :=
  ∀ n, P10070185017140758462.a n = (A301819 (n + 1) : ℚ)

end A301819

/-! ## A301819.P3355683851338428195

`A122678(n+1)+A000124(n)`
-/

namespace A301819.P3355683851338428195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122678 (n + 1) + A000124 n

end

end A301819.P3355683851338428195

namespace A301819

/-- `A122678(n+1)+A000124(n)` -/
def P3355683851338428195.Spec : Prop :=
  ∀ n, P3355683851338428195.a n = A301819 (n + 1)

end A301819

/-! ## A301819.P12222343062590825776

`A307681(n+3)+A106729(n)`
-/

namespace A301819.P12222343062590825776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307681 (n + 3) + A106729 n

end

end A301819.P12222343062590825776

namespace A301819

/-- `A307681(n+3)+A106729(n)` -/
def P12222343062590825776.Spec : Prop :=
  ∀ n, P12222343062590825776.a n = A301819 (n + 1)

end A301819

/-!
# A301820: Number of nX5 0..1 arrays with every element equal to 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301820, there is no canonical definition to state claims against.
-/

/-! ## A301820.P11893156446013851295

`A301823(Δ[A264443(n)])`
-/

namespace A301820.P11893156446013851295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (f1 (n + 1) - f1 n).toNat

end

end A301820.P11893156446013851295

/-! ## A301820.P11788338171075101265

`A301823(A046691(n+3))`
-/

namespace A301820.P11788338171075101265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A046691 (n + 3)).toNat

end

end A301820.P11788338171075101265

/-! ## A301820.P4639128038576468850

`A301823(Δ[A023545(n+1)])`
-/

namespace A301820.P4639128038576468850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (f1 (n + 1) - f1 n).toNat

end

end A301820.P4639128038576468850

/-! ## A301820.P8943869611462877036

`A301823(A052905(n+2)+1)`
-/

namespace A301820.P8943869611462877036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A052905 (n + 2) + 1).toNat

end

end A301820.P8943869611462877036

/-! ## A301820.P14229438052769506658

`A301823(A141214(n+2)-1)`
-/

namespace A301820.P14229438052769506658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A141214 (n + 2) - 1).toNat

end

end A301820.P14229438052769506658

/-!
# A301821: Number of nX6 0..1 arrays with every element equal to 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301821, there is no canonical definition to state claims against.
-/

/-! ## A301821.P13837999305579959146

`A301823(A034856(n+5)-3)`
-/

namespace A301821.P13837999305579959146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A034856 (n + 5) - 3).toNat

end

end A301821.P13837999305579959146

/-! ## A301821.P706150443506239561

`A301823(A000124(n+6)-6)`
-/

namespace A301821.P706150443506239561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A000124 (n + 6) - 6).toNat

end

end A301821.P706150443506239561

/-! ## A301821.P5487754000095207866

`A301823(Δ[Δ[A006504(n+1)]])`
-/

namespace A301821.P5487754000095207866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (f1 (n + 1) - f1 n).toNat

end

end A301821.P5487754000095207866

/-! ## A301821.P4617061161565779984

`A301823(Δ[A264443(n+1)]-1)`
-/

namespace A301821.P4617061161565779984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (f1 (n + 1) - f1 n - 1).toNat

end

end A301821.P4617061161565779984

/-! ## A301821.P11636503627539958587

`A301823(Δ[A023545(n+2)]-1)`
-/

namespace A301821.P11636503627539958587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (f1 (n + 1) - f1 n - 1).toNat

end

end A301821.P11636503627539958587

/-!
# A301822: Number of nX7 0..1 arrays with every element equal to 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301822, there is no canonical definition to state claims against.
-/

/-! ## A301822.P4419770135123537690

`A301823(A055999(n+4))`
-/

namespace A301822.P4419770135123537690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A055999 (n + 4)).toNat

end

end A301822.P4419770135123537690

/-! ## A301822.P8136759100985394471

`A301823(eq[6, A193592(n)])`
-/

namespace A301822.P8136759100985394471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301822.P8136759100985394471

/-! ## A301822.P13517594433868957101

`A301823(eq[10, A185782(n+1)])`
-/

namespace A301822.P13517594433868957101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301822.P13517594433868957101

/-! ## A301822.P8594610318537005579

`A301823(eq[32, A057728(n+1)])`
-/

namespace A301822.P8594610318537005579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301822.P8594610318537005579

/-! ## A301822.P1501444003695275131

`A301823(eq[7, A200370(n+1)])`
-/

namespace A301822.P1501444003695275131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301822.P1501444003695275131

/-!
# A301823: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301823, there is no canonical definition to state claims against.
-/

/-! ## A301823.P4555566208958482086

`A301999(n+1)-A342910(A247306(n+1))`
-/

namespace A301823.P4555566208958482086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (n + 1) - A342910 (A247306 (n + 1)).toNat

end

end A301823.P4555566208958482086

/-! ## A301823.P425627969226126972

`A301999(n+1)+A016389(A022166(n))`
-/

namespace A301823.P425627969226126972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (n + 1) + A016389 (A022166 n).toNat

end

end A301823.P425627969226126972

/-! ## A301823.P2347010541572640874

`A301999(n+1)+A290531(A056940(n))`
-/

namespace A301823.P2347010541572640874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (n + 1) + A290531 (A056940 n).toNat

end

end A301823.P2347010541572640874

/-! ## A301823.P8374742408588693041

`A301999(n+1)+A240330(A289107(n))`
-/

namespace A301823.P8374742408588693041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (n + 1) + A240330 (A289107 n).toNat

end

end A301823.P8374742408588693041

/-! ## A301823.P17900575061631886741

`A301999(n+1)-A011731(A022171(n))`
-/

namespace A301823.P17900575061631886741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (n + 1) - A011731 (A022171 n).toNat

end

end A301823.P17900575061631886741

/-!
# A301824: Number of 3Xn 0..1 arrays with every element equal to 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301824, there is no canonical definition to state claims against.
-/

/-! ## A301824.P2085832352516496308

`A301823(∑[n+2]+4)`
-/

namespace A301824.P2085832352516496308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301824.P2085832352516496308

/-! ## A301824.P15903170054283074040

`A301823(A167614(n+1))+A185284(n)`
-/

namespace A301824.P15903170054283074040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A167614 (n + 1)).toNat + A185284 n

end

end A301824.P15903170054283074040

/-! ## A301824.P5033388456357412355

`A054977(n)*A301823(A167614(n+1))`
-/

namespace A301824.P5033388456357412355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A301823 (A167614 (n + 1)).toNat

end

end A301824.P5033388456357412355

/-! ## A301824.P17034782306242603584

`A057427(n)*A301823(A167614(n+1))`
-/

namespace A301824.P17034782306242603584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A301823 (A167614 (n + 1)).toNat

end

end A301824.P17034782306242603584

/-! ## A301824.P8302507390641589438

`A178334(n)*A301823(A167614(n+1))`
-/

namespace A301824.P8302507390641589438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A301823 (A167614 (n + 1)).toNat

end

end A301824.P8302507390641589438

/-!
# A301825: Number of 4Xn 0..1 arrays with every element equal to 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301825, there is no canonical definition to state claims against.
-/

/-! ## A301825.P1774872713758891356

`A301823(A141214(n)+7)`
-/

namespace A301825.P1774872713758891356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A141214 n + 7).toNat

end

end A301825.P1774872713758891356

/-! ## A301825.P7403148207091848174

`A301823(A052905(n)+9)`
-/

namespace A301825.P7403148207091848174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A052905 n + 9).toNat

end

end A301825.P7403148207091848174

/-! ## A301825.P2934164374191161243

`A301823(A055999(n)+10)`
-/

namespace A301825.P2934164374191161243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A055999 n + 10).toNat

end

end A301825.P2934164374191161243

/-! ## A301825.P12884327883668525929

`A301823(A167614(n+2)+1)`
-/

namespace A301825.P12884327883668525929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A167614 (n + 2) + 1).toNat

end

end A301825.P12884327883668525929

/-! ## A301825.P2902923064253338370

`A301823(A133263(n+3)+2)`
-/

namespace A301825.P2902923064253338370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A133263 (n + 3) + 2).toNat

end

end A301825.P2902923064253338370

/-!
# A301826: Number of 5 X n 0..1 arrays with every element equal to 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301826, there is no canonical definition to state claims against.
-/

/-! ## A301826.P2417421235876655774

`A301823(A167499(n+3))`
-/

namespace A301826.P2417421235876655774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A167499 (n + 3)).toNat

end

end A301826.P2417421235876655774

/-! ## A301826.P6391623103294264076

`A301823(A155212(n)+13)`
-/

namespace A301826.P6391623103294264076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A155212 n + 13).toNat

end

end A301826.P6391623103294264076

/-! ## A301826.P14892004706874305347

`A301823(A133263(n+4)+3)`
-/

namespace A301826.P14892004706874305347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A133263 (n + 4) + 3).toNat

end

end A301826.P14892004706874305347

/-! ## A301826.P4126683654726343729

`A301823(A000217(n+4)+5)`
-/

namespace A301826.P4126683654726343729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A000217 (n + 4) + 5).toNat

end

end A301826.P4126683654726343729

/-! ## A301826.P5847305303565639096

`A301823(Δ[A034857(n+1)]+8)`
-/

namespace A301826.P5847305303565639096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (f1 (n + 1) - f1 n + 8).toNat

end

end A301826.P5847305303565639096

/-!
# A301827: Number of 6Xn 0..1 arrays with every element equal to 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301827, there is no canonical definition to state claims against.
-/

/-! ## A301827.P279465982480659283

`A301823(Δ[A264443(n)]+10)`
-/

namespace A301827.P279465982480659283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (f1 (n + 1) - f1 n + 10).toNat

end

end A301827.P279465982480659283

/-! ## A301827.P11421706618216766893

`A301823(A167499(n+4)+1)`
-/

namespace A301827.P11421706618216766893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A167499 (n + 4) + 1).toNat

end

end A301827.P11421706618216766893

/-! ## A301827.P13019876768405307028

`A301823(A000217(n+5)+6)`
-/

namespace A301827.P13019876768405307028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A000217 (n + 5) + 6).toNat

end

end A301827.P13019876768405307028

/-! ## A301827.P14260417759006377494

`A301823(Δ[A023545(n+1)]+10)`
-/

namespace A301827.P14260417759006377494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (f1 (n + 1) - f1 n + 10).toNat

end

end A301827.P14260417759006377494

/-! ## A301827.P15980888385915540808

`A301823(A000124(n+6)-(n+1))`
-/

namespace A301827.P15980888385915540808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A301827.P15980888385915540808

/-!
# A301828: Number of 7Xn 0..1 arrays with every element equal to 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301828, there is no canonical definition to state claims against.
-/

/-! ## A301828.P5863493868089353132

`A301823(A167487(n+5))`
-/

namespace A301828.P5863493868089353132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A167487 (n + 5)).toNat

end

end A301828.P5863493868089353132

/-! ## A301828.P11893564654650520444

`A301823(A166136(n+5)+1)`
-/

namespace A301828.P11893564654650520444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A166136 (n + 5) + 1).toNat

end

end A301828.P11893564654650520444

/-! ## A301828.P745471136120148479

`A301823(A000124(n+6)+6)`
-/

namespace A301828.P745471136120148479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A000124 (n + 6) + 6).toNat

end

end A301828.P745471136120148479

/-! ## A301828.P18373391595010005464

`A301823(A000096(n+5)+8)`
-/

namespace A301828.P18373391595010005464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A000096 (n + 5) + 8).toNat

end

end A301828.P18373391595010005464

/-! ## A301828.P13439445836376093427

`A301823(A000217(n+6)+7)`
-/

namespace A301828.P13439445836376093427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301823 (A000217 (n + 6) + 7).toNat

end

end A301828.P13439445836376093427

/-!
# A301829: Number of ways to choose a nonempty submultiset of a factorization of n into factors greater than one.

The programs for A301829, there is no canonical definition to state claims against.
-/

/-! ## A301829.P7479873847457635019

`A301830(n+1)-Δ[A096276(n)]`
-/

namespace A301829.P7479873847457635019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301830 (n + 1) - (f1 (n + 1) - f1 n)

end

end A301829.P7479873847457635019

/-! ## A301829.P11951252031582416684

`A301830(n+1)-A001055(n+1)`
-/

namespace A301829.P11951252031582416684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301830 (n + 1) - A001055 (n + 1)

end

end A301829.P11951252031582416684

/-! ## A301829.P5107385392789566858

`A301830(n+1)-A347438((n+1)²)`
-/

namespace A301829.P5107385392789566858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301830 (n + 1) - A347438 ((n + 1) ^ 2)

end

end A301829.P5107385392789566858

/-! ## A301829.P17639331558531489096

`A301830(n+1)-A066032(∑[n+1])`
-/

namespace A301829.P17639331558531489096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301830 (n + 1) - A066032 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A301829.P17639331558531489096

/-! ## A301829.P2750537530695300494

`A301830(n+1)-(A028422(n+1)+1)`
-/

namespace A301829.P2750537530695300494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301830 (n + 1) - (A028422 (n + 1) + 1)

end

end A301829.P2750537530695300494

/-! ## A301829.P5664087982280088493

`A301830(n+1)-A344368(n+1)/(n+1)`
-/

namespace A301829.P5664087982280088493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301830 (n + 1) : ℚ) - (A344368 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A301829.P5664087982280088493

/-! ## A301829.P11410637142780110916

`A301830(n+1)-A005555(A028422(n+1))`
-/

namespace A301829.P11410637142780110916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301830 (n + 1) - A005555 (A028422 (n + 1)).toNat

end

end A301829.P11410637142780110916

/-! ## A301829.P12155283708219904093

`A033619(A301830(n+1)-A028422(n+1))`
-/

namespace A301829.P12155283708219904093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A301830 (n + 1) - A028422 (n + 1)).toNat

end

end A301829.P12155283708219904093

/-! ## A301829.P6410402398764875498

`A301830(n+1)-A050322(A101296(n+1))`
-/

namespace A301829.P6410402398764875498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301830 (n + 1) - A050322 (A101296 (n + 1)).toNat

end

end A301829.P6410402398764875498

/-!
# A301830: Number of factorizations of n into factors (greater than 1) of two kinds.

The programs for A301830, there is no canonical definition to state claims against.
-/

/-! ## A301830.P1441913320047682082

`∑{d}[n+1, A001055(#)*A001055((n+1)/#)]`
-/

namespace A301830.P1441913320047682082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A001055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A301830.P1441913320047682082

/-! ## A301830.P17263205878709642804

`∑{d}[n+1, A050370(#)*A057567((n+1)/#)]`
-/

namespace A301830.P17263205878709642804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050370 d * A057567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A301830.P17263205878709642804

/-! ## A301830.P2382877262817860593

`∑{d}[n+1, A114592(#)*A339318((n+1)/#)]`
-/

namespace A301830.P2382877262817860593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A339318 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A301830.P2382877262817860593

/-! ## A301830.P8184714765799192390

`∑{d}[n+1, A328707(#)*A347438((n+1)/#)]`
-/

namespace A301830.P8184714765799192390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328707 d * A347438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A301830.P8184714765799192390

/-! ## A301830.P12133898460949172263

`∑{d}[n+1, A339321(#)*A339703((n+1)/#)]`
-/

namespace A301830.P12133898460949172263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339321 d * A339703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A301830.P12133898460949172263

/-! ## A301830.P10658103738253168848

`∑{d}[n+1, A339319(#)*A339701((n+1)/#)]`
-/

namespace A301830.P10658103738253168848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339319 d * A339701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A301830.P10658103738253168848

/-! ## A301830.P700270879252135632

`∑{d}[n+1, A339320(#)*A339702((n+1)/#)]`
-/

namespace A301830.P700270879252135632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339320 d * A339702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A301830.P700270879252135632

/-! ## A301830.P14639972026467797147

`∑{d}[n+1, A339323(#)*A339705((n+1)/#)]`
-/

namespace A301830.P14639972026467797147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339323 d * A339705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A301830.P14639972026467797147

/-! ## A301830.P2301608136246602519

`∑{d}[n+1, A339324(#)*A339706((n+1)/#)]`
-/

namespace A301830.P2301608136246602519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339324 d * A339706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A301830.P2301608136246602519

/-! ## A301830.P12461024969482722167

`∑{d}[n+1, A339322(#)*A339704((n+1)/#)]`
-/

namespace A301830.P12461024969482722167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339322 d * A339704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A301830.P12461024969482722167

/-!
# A301831: G.f. A(x) satisfies: A(x) = Product_{k>=1} 1/(1 + x^k*A(x)^k)^k.

The programs for A301831, there is no canonical definition to state claims against.
-/

/-! ## A301831.P5003901653603692579

`A279928(eq[A186128(n+1), A186128(n+2)])/(n+1)`
-/

namespace A301831.P5003901653603692579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186128 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279928 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / (n + 1 : ℚ)

end

end A301831.P5003901653603692579

/-!
# A301833: G.f. A(x) satisfies: A(x) = 1/(1 - 2*x*A(x)/(1 - 2*x*A(x)/(1 - 4*x*A(x)/(1 - 4*x*A(x)/(1 - 6*x*A(x)/(1 - 6*x*A(x)/(1 - ...))))))), a continued fraction.

The programs for A301833, there is no canonical definition to state claims against.
-/

/-! ## A301833.P5124920688479645834

`2^n*A088368(n)`
-/

namespace A301833.P5124920688479645834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A088368 n

end

end A301833.P5124920688479645834

/-! ## A301833.P10697318022521510722

`lcm(Δ[A000225(n)], A088368(n))`
-/

namespace A301833.P10697318022521510722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A088368 n)

end

end A301833.P10697318022521510722

/-! ## A301833.P6506661424667124516

`A084938(A001105(n+1))/(n+1)*Δ[A000225(n)]`
-/

namespace A301833.P6506661424667124516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 (A001105 (n + 1)).toNat : ℚ) / (n + 1 : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A301833.P6506661424667124516

/-! ## A301833.P14473288605012493375

`A084938(A001105(n+1))/(n+1)*Δ[A036563(n)]`
-/

namespace A301833.P14473288605012493375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 (A001105 (n + 1)).toNat : ℚ) / (n + 1 : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A301833.P14473288605012493375

/-! ## A301833.P4960020794829032007

`A084938(A005843((n+1)²))/(n+1)*Δ[A000225(n)]`
-/

namespace A301833.P4960020794829032007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 (A005843 ((n + 1) ^ 2)).toNat : ℚ) / (n + 1 : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A301833.P4960020794829032007

/-!
# A301834: G.f. A(x) satisfies: A(x) = 1/(1 - x*A(x)/(1 - 4*x*A(x)/(1 - 9*x*A(x)/(1 - 16*x*A(x)/(1 - ... - k^2*x*A(x)/(1 - ...)))))), a continued fraction.

The programs for A301834, there is no canonical definition to state claims against.
-/

/-! ## A301834.P1449980447359331007

`A186324(A191189(n!))`
-/

namespace A301834.P1449980447359331007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186324 (A191189 (Nat.factorial n)).toNat

end

end A301834.P1449980447359331007

/-!
# A301835: Number of n X n 0..1 arrays with every element equal to 0, 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301835, there is no canonical definition to state claims against.
-/

/-! ## A301835.P1322642893848096929

`A301841(∑[4*n]+1)`
-/

namespace A301835.P1322642893848096929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301835.P1322642893848096929

/-! ## A301835.P13203250855404249501

`record[A003982(n)*A301841(n+1)]`
-/

namespace A301835.P13203250855404249501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A301841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301835.P13203250855404249501

/-! ## A301835.P9576761162315824408

`record[gcd(A037012(n), A301841(n+1))]`
-/

namespace A301835.P9576761162315824408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A301841 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301835.P9576761162315824408

/-! ## A301835.P16696285990950825149

`A301841(A001844(n))+A185284(n)`
-/

namespace A301835.P16696285990950825149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A001844 n).toNat + A185284 n

end

end A301835.P16696285990950825149

/-! ## A301835.P17662989108321256478

`A301841(A001844(n))^A007318(C(2, n))`
-/

namespace A301835.P17662989108321256478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301841 (A001844 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A301835.P17662989108321256478

/-!
# A301836: Number of n X 3 0..1 arrays with every element equal to 0, 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301836, the canonical program `A301836.P8510518740732851433` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301836 has offset 1).

The definition of A301836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301836.P705968442049297520

`ogf((4-3x-4x^2)/(1-7x+8x^2))`
-/

namespace A301836.P705968442049297520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, -4] [1, -7, 8] n

end

end A301836.P705968442049297520

namespace A301836

/-- `ogf((4-3x-4x^2)/(1-7x+8x^2))` -/
def P705968442049297520.Spec : Prop :=
  ∀ n, P705968442049297520.a n = A301836 (n + 1)

end A301836

/-! ## A301836.P8510518740732851433

`7*a(n-1)-8*a(n-2)` with `a(0)=4, a(1)=25, a(2)=139`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301836

/-- `7*a(n-1)-8*a(n-2)` -/
def P8510518740732851433.Spec : Prop :=
  ∀ n, P8510518740732851433.a n = A301836 (n + 1)

theorem P8510518740732851433.correct : P8510518740732851433.Spec := by
  intro n
  simp only [A301836, Nat.add_sub_cancel]

end A301836

/-! ## A301836.P5146007609759458875

`Δ[floor(A275229(n+1)/2)]`
-/

namespace A301836.P5146007609759458875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A275229 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301836.P5146007609759458875

namespace A301836

/-- `Δ[floor(A275229(n+1)/2)]` -/
def P5146007609759458875.Spec : Prop :=
  ∀ n, P5146007609759458875.a n = A301836 (n + 1)

end A301836

/-! ## A301836.P6733041193060085725

`Δ[A208044(n+1)]-A275229(n+1)`
-/

namespace A301836.P6733041193060085725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A275229 (n + 1)

end

end A301836.P6733041193060085725

namespace A301836

/-- `Δ[A208044(n+1)]-A275229(n+1)` -/
def P6733041193060085725.Spec : Prop :=
  ∀ n, P6733041193060085725.a n = A301836 (n + 1)

end A301836

/-! ## A301836.P2784617423307815537

`Δ[A208044(n+1)]-A208044(n+2)/4`
-/

namespace A301836.P2784617423307815537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208044 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A208044 (n + 2) : ℚ) / 4

end

end A301836.P2784617423307815537

namespace A301836

/-- `Δ[A208044(n+1)]-A208044(n+2)/4` -/
def P2784617423307815537.Spec : Prop :=
  ∀ n, P2784617423307815537.a n = (A301836 (n + 1) : ℚ)

end A301836

/-! ## A301836.P263161936745548994

`Δ[floor(A208044(n+2)/8)]`
-/

namespace A301836.P263161936745548994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A208044 (n + 2) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301836.P263161936745548994

namespace A301836

/-- `Δ[floor(A208044(n+2)/8)]` -/
def P263161936745548994.Spec : Prop :=
  ∀ n, P263161936745548994.a n = A301836 (n + 1)

end A301836

/-!
# A301837: Number of nX4 0..1 arrays with every element equal to 0, 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301837, there is no canonical definition to state claims against.
-/

/-! ## A301837.P11495663183709223924

`A301841(A141214(n+1))`
-/

namespace A301837.P11495663183709223924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A141214 (n + 1)).toNat

end

end A301837.P11495663183709223924

/-! ## A301837.P11866414983461035350

`A301841(A027379(n+2))`
-/

namespace A301837.P11866414983461035350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A027379 (n + 2)).toNat

end

end A301837.P11866414983461035350

/-! ## A301837.P8869340458416248696

`A301841(A155212(n)+5)`
-/

namespace A301837.P8869340458416248696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A155212 n + 5).toNat

end

end A301837.P8869340458416248696

/-! ## A301837.P7966369053940982436

`A301841(eq[2, A220062(n)])`
-/

namespace A301837.P7966369053940982436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301837.P7966369053940982436

/-! ## A301837.P3615533957963679728

`A301841(Δ[A006503(n+1)])`
-/

namespace A301837.P3615533957963679728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (f1 (n + 1) - f1 n).toNat

end

end A301837.P3615533957963679728

/-!
# A301838: Number of nX5 0..1 arrays with every element equal to 0, 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301838, there is no canonical definition to state claims against.
-/

/-! ## A301838.P9929441396033167327

`A301841(Δ[A264443(n)])`
-/

namespace A301838.P9929441396033167327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (f1 (n + 1) - f1 n).toNat

end

end A301838.P9929441396033167327

/-! ## A301838.P6830334800642510574

`A301841(eq[4, A193592(n)])`
-/

namespace A301838.P6830334800642510574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301838.P6830334800642510574

/-! ## A301838.P10415105862961441671

`A301841(eq[8, A140996(n)])`
-/

namespace A301838.P10415105862961441671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301838.P10415105862961441671

/-! ## A301838.P15105224378281639132

`A301841(Δ[A023545(n+1)])`
-/

namespace A301838.P15105224378281639132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (f1 (n + 1) - f1 n).toNat

end

end A301838.P15105224378281639132

/-! ## A301838.P11597862979432162036

`A301841(A052905(n+2)+1)`
-/

namespace A301838.P11597862979432162036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A052905 (n + 2) + 1).toNat

end

end A301838.P11597862979432162036

/-!
# A301839: Number of nX6 0..1 arrays with every element equal to 0, 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301839, there is no canonical definition to state claims against.
-/

/-! ## A301839.P7125108262777244714

`A301841(eq[3, A219347(n)])`
-/

namespace A301839.P7125108262777244714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301839.P7125108262777244714

/-! ## A301839.P757744024761346487

`A301841(eq[5, A193592(n)])`
-/

namespace A301839.P757744024761346487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301839.P757744024761346487

/-! ## A301839.P393271586372531767

`A301841(eq[8, A185782(n+1)])`
-/

namespace A301839.P393271586372531767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301839.P393271586372531767

/-! ## A301839.P17375126650387629386

`A301841(Δ[Δ[A006504(n+1)]])`
-/

namespace A301839.P17375126650387629386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (f1 (n + 1) - f1 n).toNat

end

end A301839.P17375126650387629386

/-! ## A301839.P8245389855073773061

`A301841(Δ[A264443(n+1)]-1)`
-/

namespace A301839.P8245389855073773061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (f1 (n + 1) - f1 n - 1).toNat

end

end A301839.P8245389855073773061

/-!
# A301840: Number of nX7 0..1 arrays with every element equal to 0, 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301840, there is no canonical definition to state claims against.
-/

/-! ## A301840.P729157373723103819

`A301841(eq[4, A219347(n)])`
-/

namespace A301840.P729157373723103819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301840.P729157373723103819

/-! ## A301840.P13350310648309875875

`A301841(eq[6, A193592(n)])`
-/

namespace A301840.P13350310648309875875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301840.P13350310648309875875

/-! ## A301840.P8458293616795210454

`A301841(A000124(n+7)-7)`
-/

namespace A301840.P8458293616795210454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A000124 (n + 7) - 7).toNat

end

end A301840.P8458293616795210454

/-! ## A301840.P7684125355274957013

`A301841(eq[10, A185782(n+1)])`
-/

namespace A301840.P7684125355274957013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301840.P7684125355274957013

/-! ## A301840.P9433984076429789397

`A301841(eq[32, A057728(n+1)])`
-/

namespace A301840.P9433984076429789397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301840.P9433984076429789397

/-!
# A301841: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301841, there is no canonical definition to state claims against.
-/

/-! ## A301841.P15991723455308731633

`A302069(n+1)-A070635(A056040(n))`
-/

namespace A301841.P15991723455308731633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (n + 1) - A070635 (A056040 n).toNat

end

end A301841.P15991723455308731633

/-! ## A301841.P10994121793393679608

`A302069(A084192(∑[n]))`
-/

namespace A301841.P10994121793393679608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A301841.P10994121793393679608

/-! ## A301841.P6113117812086302070

`A302069(A084193(∑[n]))`
-/

namespace A301841.P6113117812086302070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A301841.P6113117812086302070

/-! ## A301841.P2797973388223680883

`A302069(A004896(n+2))`
-/

namespace A301841.P2797973388223680883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A004896 (n + 2)).toNat

end

end A301841.P2797973388223680883

/-! ## A301841.P2083189505505153961

`A302069(A004907(n+2))`
-/

namespace A301841.P2083189505505153961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A004907 (n + 2)).toNat

end

end A301841.P2083189505505153961

/-!
# A301842: Number of 2Xn 0..1 arrays with every element equal to 0, 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301842, the canonical program `A301842.P8016733703759564793` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301842 has offset 1).

The definition of A301842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301842.P8016733703759564793

`3*a(n-1)+a(n-2)-2*a(n-4)` with `a(0)=2, a(1)=8, a(2)=25, a(3)=81, a(4)=263, a(5)=855`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301842

/-- `3*a(n-1)+a(n-2)-2*a(n-4)` -/
def P8016733703759564793.Spec : Prop :=
  ∀ n, P8016733703759564793.a n = A301842 (n + 1)

theorem P8016733703759564793.correct : P8016733703759564793.Spec := by
  intro n
  simp only [A301842, Nat.add_sub_cancel]

end A301842

/-! ## A301842.P16537273961811048507

`A301841(∑[n+1]+2)`
-/

namespace A301842.P16537273961811048507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A301842.P16537273961811048507

namespace A301842

/-- `A301841(∑[n+1]+2)` -/
def P16537273961811048507.Spec : Prop :=
  ∀ n, P16537273961811048507.a n = A301842 (n + 1)

end A301842

/-! ## A301842.P17299913919976608870

`record[A301841(n+2)/A145901(n)]`
-/

namespace A301842.P17299913919976608870
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301841 (n + 2) : ℚ) / (A145901 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301842.P17299913919976608870

namespace A301842

/-- `record[A301841(n+2)/A145901(n)]` -/
def P17299913919976608870.Spec : Prop :=
  ∀ n, P17299913919976608870.a n = (A301842 (n + 1) : ℚ)

end A301842

/-! ## A301842.P16632333105597006423

`record[gcd(A002262(n), A301841(n+2))]`
-/

namespace A301842.P16632333105597006423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A301841 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301842.P16632333105597006423

namespace A301842

/-- `record[gcd(A002262(n), A301841(n+2))]` -/
def P16632333105597006423.Spec : Prop :=
  ∀ n, (P16632333105597006423.a n : ℤ) = A301842 (n + 1)

end A301842

/-! ## A301842.P7492735842921526216

`A302069(∑[n+1]+2)`
-/

namespace A301842.P7492735842921526216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A301842.P7492735842921526216

namespace A301842

/-- `A302069(∑[n+1]+2)` -/
def P7492735842921526216.Spec : Prop :=
  ∀ n, P7492735842921526216.a n = A301842 (n + 1)

end A301842

/-!
# A301843: Number of 3Xn 0..1 arrays with every element equal to 0, 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301843, there is no canonical definition to state claims against.
-/

/-! ## A301843.P4953982646793577397

`A301841(∑[n+2]+4)`
-/

namespace A301843.P4953982646793577397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301843.P4953982646793577397

/-! ## A301843.P3886837462087516128

`or(char[2], A301841(A167614(n+1)))`
-/

namespace A301843.P3886837462087516128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A301841 (A167614 (n + 1)).toNat)

end

end A301843.P3886837462087516128

/-! ## A301843.P5374456230774188879

`A301841(A167614(n+1))+A000007(n+1)`
-/

namespace A301843.P5374456230774188879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A301843.P5374456230774188879

/-! ## A301843.P15016148043684329699

`gcd(2, A000040(n+2))*A301841(A167614(n+1))`
-/

namespace A301843.P15016148043684329699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A301841 (A167614 (n + 1)).toNat

end

end A301843.P15016148043684329699

/-! ## A301843.P698144175280691257

`A014963(24*(n+1)²)*A301841(A167614(n+1))`
-/

namespace A301843.P698144175280691257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (24 * (n + 1) ^ 2) * A301841 (A167614 (n + 1)).toNat

end

end A301843.P698144175280691257

/-!
# A301844: Number of 4Xn 0..1 arrays with every element equal to 0, 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301844, there is no canonical definition to state claims against.
-/

/-! ## A301844.P3059975754464393435

`A301841(A141214(n)+7)`
-/

namespace A301844.P3059975754464393435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A141214 n + 7).toNat

end

end A301844.P3059975754464393435

/-! ## A301844.P10507675340227566593

`A301841(A052905(n)+9)`
-/

namespace A301844.P10507675340227566593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A052905 n + 9).toNat

end

end A301844.P10507675340227566593

/-! ## A301844.P7797861087669143268

`A301841(A055999(n)+10)`
-/

namespace A301844.P7797861087669143268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A055999 n + 10).toNat

end

end A301844.P7797861087669143268

/-! ## A301844.P6842236459186549577

`A301841(A167614(n+2)+1)`
-/

namespace A301844.P6842236459186549577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A167614 (n + 2) + 1).toNat

end

end A301844.P6842236459186549577

/-! ## A301844.P14553490754723922635

`A301841(eq[5, A131818(n+1)])`
-/

namespace A301844.P14553490754723922635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301844.P14553490754723922635

/-!
# A301845: Number of 5Xn 0..1 arrays with every element equal to 0, 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301845, there is no canonical definition to state claims against.
-/

/-! ## A301845.P12250133507489316902

`A301841(A167499(n+3))`
-/

namespace A301845.P12250133507489316902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A167499 (n + 3)).toNat

end

end A301845.P12250133507489316902

/-! ## A301845.P8216834151394327283

`A301841(A155212(n)+13)`
-/

namespace A301845.P8216834151394327283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A155212 n + 13).toNat

end

end A301845.P8216834151394327283

/-! ## A301845.P10746651666883556198

`A301841(eq[7, A066657(n)])`
-/

namespace A301845.P10746651666883556198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301845.P10746651666883556198

/-! ## A301845.P10707974567283845000

`A301841(A000217(n+4)+5)`
-/

namespace A301845.P10707974567283845000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A000217 (n + 4) + 5).toNat

end

end A301845.P10707974567283845000

/-! ## A301845.P6692581014695925644

`A301841(eq[6, A131818(n+1)])`
-/

namespace A301845.P6692581014695925644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301845.P6692581014695925644

/-!
# A301846: Number of 6Xn 0..1 arrays with every element equal to 0, 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301846, there is no canonical definition to state claims against.
-/

/-! ## A301846.P5448863889030315963

`A301841(A056115(n)+21)`
-/

namespace A301846.P5448863889030315963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A056115 n + 21).toNat

end

end A301846.P5448863889030315963

/-! ## A301846.P5682009666835640977

`A301841(A000124(n+5)+5)`
-/

namespace A301846.P5682009666835640977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A000124 (n + 5) + 5).toNat

end

end A301846.P5682009666835640977

/-! ## A301846.P9993780938087839783

`A301841(A000217(n+5)+6)`
-/

namespace A301846.P9993780938087839783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A000217 (n + 5) + 6).toNat

end

end A301846.P9993780938087839783

/-! ## A301846.P15404626340183731831

`A301841(A155212(n+1)+14)`
-/

namespace A301846.P15404626340183731831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A155212 (n + 1) + 14).toNat

end

end A301846.P15404626340183731831

/-! ## A301846.P4788281085916145175

`A301841(eq[7, A131818(n+1)])`
-/

namespace A301846.P4788281085916145175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301846.P4788281085916145175

/-!
# A301847: Number of 7Xn 0..1 arrays with every element equal to 0, 1 or 2 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301847, there is no canonical definition to state claims against.
-/

/-! ## A301847.P6161872868385619348

`A301841(A167487(n+5))`
-/

namespace A301847.P6161872868385619348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A167487 (n + 5)).toNat

end

end A301847.P6161872868385619348

/-! ## A301847.P9291310684987181021

`A301841(eq[11, A066657(n)])`
-/

namespace A301847.P9291310684987181021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301847.P9291310684987181021

/-! ## A301847.P14976152287458248884

`A301841(A000096(n+5)+8)`
-/

namespace A301847.P14976152287458248884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A000096 (n + 5) + 8).toNat

end

end A301847.P14976152287458248884

/-! ## A301847.P17635876911663649331

`A301841(eq[8, A131818(n+1)])`
-/

namespace A301847.P17635876911663649331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301847.P17635876911663649331

/-! ## A301847.P2708062426338268656

`A301841(A000124(n+7)-(n+1))`
-/

namespace A301847.P2708062426338268656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A301847.P2708062426338268656

/-!
# A301848: Number of states generated by morphism during inflation stage of paper-folding sequence.

The programs for A301848, the canonical program `A301848.P12737412631956633258` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301848 has offset 0).

The definition of A301848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301848.P16487905443064530642

`char[comp[and(n, n-1)+n]]+3^(n%2)`
-/

namespace A301848.P16487905443064530642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 3 ^ (n % 2)

end

end A301848.P16487905443064530642

namespace A301848

/-- `char[comp[and(n, n-1)+n]]+3^(n%2)` -/
def P16487905443064530642.Spec : Prop :=
  ∀ n, (P16487905443064530642.a n : ℤ) = A301848 n

end A301848

/-! ## A301848.P17656805807418945785

`char[comp[and(n, n-1)+n]]+3^and(1, n)`
-/

namespace A301848.P17656805807418945785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 3 ^ Nat.land 1 n

end

end A301848.P17656805807418945785

namespace A301848

/-- `char[comp[and(n, n-1)+n]]+3^and(1, n)` -/
def P17656805807418945785.Spec : Prop :=
  ∀ n, (P17656805807418945785.a n : ℤ) = A301848 n

end A301848

/-! ## A301848.P10658529356981752408

`char[comp[and(n, n-1)+n]]+Δ[n²]%4`
-/

namespace A301848.P10658529356981752408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) 4

end

end A301848.P10658529356981752408

namespace A301848

/-- `char[comp[and(n, n-1)+n]]+Δ[n²]%4` -/
def P10658529356981752408.Spec : Prop :=
  ∀ n, P10658529356981752408.a n = A301848 n

end A301848

/-! ## A301848.P17592224638804725312

`char[comp[and(n, n-1)+n]]+and(3, 2*n+1)`
-/

namespace A301848.P17592224638804725312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.land 3 (2 * n + 1)

end

end A301848.P17592224638804725312

namespace A301848

/-- `char[comp[and(n, n-1)+n]]+and(3, 2*n+1)` -/
def P17592224638804725312.Spec : Prop :=
  ∀ n, (P17592224638804725312.a n : ℤ) = A301848 n

end A301848

/-! ## A301848.P4882457426221577597

`4/gcd(2, n)+char[or(n, n+1)+2+n]-1`
-/

namespace A301848.P4882457426221577597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 2 + n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ) + (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1 : ℚ)

end

end A301848.P4882457426221577597

namespace A301848

/-- `4/gcd(2, n)+char[or(n, n+1)+2+n]-1` -/
def P4882457426221577597.Spec : Prop :=
  ∀ n, P4882457426221577597.a n = (A301848 n : ℚ)

end A301848

/-! ## A301848.P15877715840114597035

`A038189(n)+3^(n%2)`
-/

namespace A301848.P15877715840114597035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n + (3 ^ (n % 2) : ℤ)

end

end A301848.P15877715840114597035

namespace A301848

/-- `A038189(n)+3^(n%2)` -/
def P15877715840114597035.Spec : Prop :=
  ∀ n, P15877715840114597035.a n = A301848 n

end A301848

/-! ## A301848.P5492301252793915379

`A130974(3*n)+char[comp[and(n, n-1)+n]]`
-/

namespace A301848.P5492301252793915379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130974 (3 * n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301848.P5492301252793915379

namespace A301848

/-- `A130974(3*n)+char[comp[and(n, n-1)+n]]` -/
def P5492301252793915379.Spec : Prop :=
  ∀ n, P5492301252793915379.a n = A301848 n

end A301848

/-! ## A301848.P12737412631956633258

`A038189(n)+A010684(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A301848

/-- `A038189(n)+A010684(n)` -/
def P12737412631956633258.Spec : Prop :=
  ∀ n, P12737412631956633258.a n = A301848 n

theorem P12737412631956633258.correct : P12737412631956633258.Spec := by
  intro n
  simp only [A301848]

end A301848

/-! ## A301848.P12176036479358251460

`A343180(A171942(n+1)+n)`
-/

namespace A301848.P12176036479358251460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343180 (A171942 (n + 1) + (n : ℤ)).toNat

end

end A301848.P12176036479358251460

namespace A301848

/-- `A343180(A171942(n+1)+n)` -/
def P12176036479358251460.Spec : Prop :=
  ∀ n, P12176036479358251460.a n = A301848 n

end A301848

/-! ## A301848.P8773528225075992507

`A382713(n)-A082410(n+1)`
-/

namespace A301848.P8773528225075992507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382713 n - A082410 (n + 1)

end

end A301848.P8773528225075992507

namespace A301848

/-- `A382713(n)-A082410(n+1)` -/
def P8773528225075992507.Spec : Prop :=
  ∀ n, P8773528225075992507.a n = A301848 n

end A301848

/-! ## A301848.P1982495169521803693

`A343180(2*n)+A038189(n)`
-/

namespace A301848.P1982495169521803693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343180 (2 * n) + A038189 n

end

end A301848.P1982495169521803693

namespace A301848

/-- `A343180(2*n)+A038189(n)` -/
def P1982495169521803693.Spec : Prop :=
  ∀ n, P1982495169521803693.a n = A301848 n

end A301848

/-! ## A301848.P4965214185411412614

`A038189(n)+A001845(n)%4`
-/

namespace A301848.P4965214185411412614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n + Int.tmod (A001845 n) 4

end

end A301848.P4965214185411412614

namespace A301848

/-- `A038189(n)+A001845(n)%4` -/
def P4965214185411412614.Spec : Prop :=
  ∀ n, P4965214185411412614.a n = A301848 n

end A301848

/-! ## A301848.P14398028744503366004

`A038189(n)+A005408(n)%4`
-/

namespace A301848.P14398028744503366004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n + Int.tmod (A005408 n) 4

end

end A301848.P14398028744503366004

namespace A301848

/-- `A038189(n)+A005408(n)%4` -/
def P14398028744503366004.Spec : Prop :=
  ∀ n, P14398028744503366004.a n = A301848 n

end A301848

/-! ## A301848.P4101903016904580505

`A038189(n)+A017377(n)%4`
-/

namespace A301848.P4101903016904580505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n + Int.tmod (A017377 n) 4

end

end A301848.P4101903016904580505

namespace A301848

/-- `A038189(n)+A017377(n)%4` -/
def P4101903016904580505.Spec : Prop :=
  ∀ n, P4101903016904580505.a n = A301848 n

end A301848

/-! ## A301848.P11210860752017477962

`A038189(n)+or(1, A000034(n))`
-/

namespace A301848.P11210860752017477962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n + Int.lor 1 (A000034 n)

end

end A301848.P11210860752017477962

namespace A301848

/-- `A038189(n)+or(1, A000034(n))` -/
def P11210860752017477962.Spec : Prop :=
  ∀ n, P11210860752017477962.a n = A301848 n

end A301848

/-! ## A301848.P5224787637163287041

`A038189(n)+Δ[A338062(n+2)]`
-/

namespace A301848.P5224787637163287041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338062 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n + (f1 (n + 1) - f1 n)

end

end A301848.P5224787637163287041

namespace A301848

/-- `A038189(n)+Δ[A338062(n+2)]` -/
def P5224787637163287041.Spec : Prop :=
  ∀ n, P5224787637163287041.a n = A301848 n

end A301848

/-! ## A301848.P2268671558165985945

`A038189(n)+A003324(2*n+1)`
-/

namespace A301848.P2268671558165985945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n + A003324 (2 * n + 1)

end

end A301848.P2268671558165985945

namespace A301848

/-- `A038189(n)+A003324(2*n+1)` -/
def P2268671558165985945.Spec : Prop :=
  ∀ n, P2268671558165985945.a n = A301848 n

end A301848

/-! ## A301848.P8947209476499922558

`A038189(n)+A010873(2*n+1)`
-/

namespace A301848.P8947209476499922558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n + A010873 (2 * n + 1)

end

end A301848.P8947209476499922558

namespace A301848

/-- `A038189(n)+A010873(2*n+1)` -/
def P8947209476499922558.Spec : Prop :=
  ∀ n, P8947209476499922558.a n = A301848 n

end A301848

/-! ## A301848.P8002702400540654236

`A099545(2*n+1)+A038189(n)`
-/

namespace A301848.P8002702400540654236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099545 (2 * n + 1) + A038189 n

end

end A301848.P8002702400540654236

namespace A301848

/-- `A099545(2*n+1)+A038189(n)` -/
def P8002702400540654236.Spec : Prop :=
  ∀ n, P8002702400540654236.a n = A301848 n

end A301848

/-! ## A301848.P1801803621365629166

`A038189(n)+A020639(2-(-1)^n)`
-/

namespace A301848.P1801803621365629166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n + A020639 (2 - (-1) ^ n).toNat

end

end A301848.P1801803621365629166

namespace A301848

/-- `A038189(n)+A020639(2-(-1)^n)` -/
def P1801803621365629166.Spec : Prop :=
  ∀ n, P1801803621365629166.a n = A301848 n

end A301848

/-!
# A301849: The Pagoda sequence: a sequence with isolated zeros in its number wall over finite fields.

The programs for A301849, the canonical program `A301849.P12522909813099406686` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301849 has offset 0).

The definition of A301849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301849.P12522909813099406686

`Δ[a(floor(n/2))-a(n-2)]` with `a(0)=0, a(1)=-1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301849

/-- `Δ[a(floor(n/2))-a(n-2)]` -/
def P12522909813099406686.Spec : Prop :=
  ∀ n, P12522909813099406686.a n = A301849 n

theorem P12522909813099406686.correct : P12522909813099406686.Spec := by
  intro n
  simp only [A301849]

end A301849

/-! ## A301849.P131400828190124378

`char[1]-A253414(n)`
-/

namespace A301849.P131400828190124378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A253414 n

end

end A301849.P131400828190124378

namespace A301849

/-- `char[1]-A253414(n)` -/
def P131400828190124378.Spec : Prop :=
  ∀ n, P131400828190124378.a n = A301849 n

end A301849

/-! ## A301849.P17258818650073242881

`-(A253414(n)+A159075(n))`
-/

namespace A301849.P17258818650073242881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A253414 n + A159075 n)

end

end A301849.P17258818650073242881

namespace A301849

/-- `-(A253414(n)+A159075(n))` -/
def P17258818650073242881.Spec : Prop :=
  ∀ n, P17258818650073242881.a n = A301849 n

end A301849

/-! ## A301849.P11363708528865194330

`-(A060576(n)*A253414(n))`
-/

namespace A301849.P11363708528865194330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A060576 n * A253414 n)

end

end A301849.P11363708528865194330

namespace A301849

/-- `-(A060576(n)*A253414(n))` -/
def P11363708528865194330.Spec : Prop :=
  ∀ n, P11363708528865194330.a n = A301849 n

end A301849

/-! ## A301849.P13217587191701465987

`-(A253414(n)*A267870(n))`
-/

namespace A301849.P13217587191701465987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A253414 n * A267870 n)

end

end A301849.P13217587191701465987

namespace A301849

/-- `-(A253414(n)*A267870(n))` -/
def P13217587191701465987.Spec : Prop :=
  ∀ n, P13217587191701465987.a n = A301849 n

end A301849

/-! ## A301849.P13023893804184579862

`-xor(A063524(n), A253414(n))`
-/

namespace A301849.P13023893804184579862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A063524 n) (A253414 n)

end

end A301849.P13023893804184579862

namespace A301849

/-- `-xor(A063524(n), A253414(n))` -/
def P13023893804184579862.Spec : Prop :=
  ∀ n, P13023893804184579862.a n = A301849 n

end A301849

/-! ## A301849.P8020491051374196854

`(A178333(n)-1)*A253414(n)`
-/

namespace A301849.P8020491051374196854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178333 n - 1) * A253414 n

end

end A301849.P8020491051374196854

namespace A301849

/-- `(A178333(n)-1)*A253414(n)` -/
def P8020491051374196854.Spec : Prop :=
  ∀ n, P8020491051374196854.a n = A301849 n

end A301849

/-! ## A301849.P12991720978540738483

`A014577(abs(2-n))-A014577(n)`
-/

namespace A301849.P12991720978540738483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 |2 - (n : ℤ)|.toNat - A014577 n

end

end A301849.P12991720978540738483

namespace A301849

/-- `A014577(abs(2-n))-A014577(n)` -/
def P12991720978540738483.Spec : Prop :=
  ∀ n, P12991720978540738483.a n = A301849 n

end A301849

/-! ## A301849.P787488034960496713

`A014707(n)-A014707(abs(2-n))`
-/

namespace A301849.P787488034960496713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n - A014707 |2 - (n : ℤ)|.toNat

end

end A301849.P787488034960496713

namespace A301849

/-- `A014707(n)-A014707(abs(2-n))` -/
def P787488034960496713.Spec : Prop :=
  ∀ n, P787488034960496713.a n = A301849 n

end A301849

/-! ## A301849.P15462071612740775549

`A014709(n)-A014709(abs(2-n))`
-/

namespace A301849.P15462071612740775549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 n - A014709 |2 - (n : ℤ)|.toNat

end

end A301849.P15462071612740775549

namespace A301849

/-- `A014709(n)-A014709(abs(2-n))` -/
def P15462071612740775549.Spec : Prop :=
  ∀ n, P15462071612740775549.a n = A301849 n

end A301849

/-! ## A301849.P13190610853474767191

`-A253414(A052938(A004275(n)))`
-/

namespace A301849.P13190610853474767191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A253414 (A052938 (A004275 n).toNat).toNat

end

end A301849.P13190610853474767191

namespace A301849

/-- `-A253414(A052938(A004275(n)))` -/
def P13190610853474767191.Spec : Prop :=
  ∀ n, P13190610853474767191.a n = A301849 n

end A301849

/-! ## A301849.P5053212320471968262

`-A253414(A028242(A223134(n)))`
-/

namespace A301849.P5053212320471968262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A253414 (A028242 (A223134 n).toNat).toNat

end

end A301849.P5053212320471968262

namespace A301849

/-- `-A253414(A028242(A223134(n)))` -/
def P5053212320471968262.Spec : Prop :=
  ∀ n, P5053212320471968262.a n = A301849 n

end A301849

/-!
# A301850: The Dakota sequence: a sequence with zero-free number-wall over ternary extension fields.

The programs for A301850, there is no canonical definition to state claims against.
-/

/-! ## A301850.P16797747626330442896

`A056594(A302656(n+4)-A175740(n))`
-/

namespace A301850.P16797747626330442896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A302656 (n + 4) - A175740 n).toNat

end

end A301850.P16797747626330442896

/-! ## A301850.P1362566561666605658

`A330025(lcm(A047263(n+1), A136252(n)))`
-/

namespace A301850.P1362566561666605658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (Int.lcm (A047263 (n + 1)) (A136252 n))

end

end A301850.P1362566561666605658

/-! ## A301850.P17620054696961533822

`Δ[A185673(2*n+5)]%2`
-/

namespace A301850.P17620054696961533822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185673 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A301850.P17620054696961533822

/-! ## A301850.P3241940513792661970

`A118251(A126445(n))-A118251(n+1)`
-/

namespace A301850.P3241940513792661970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118251 (A126445 n).toNat - A118251 (n + 1)

end

end A301850.P3241940513792661970

/-! ## A301850.P717652340342948163

`A008683(A161704(n)+A076683(n+4))`
-/

namespace A301850.P717652340342948163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A161704 n + A076683 (n + 4)).toNat

end

end A301850.P717652340342948163

/-!
# A301851: Table read by antidiagonals: T(n, k) gives the number of distinct distances on an n X k pegboard.

The programs for A301851, there is no canonical definition to state claims against.
-/

/-! ## A301851.P8764809085938900698

`A085082(A036561(n))%A269521(n+1)`
-/

namespace A301851.P8764809085938900698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085082 (A036561 n).toNat) (A269521 (n + 1))

end

end A301851.P8764809085938900698

/-! ## A301851.P6014413056218010446

`A085082(A175840(n))%A269521(n+1)`
-/

namespace A301851.P6014413056218010446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085082 (A175840 n).toNat) (A269521 (n + 1))

end

end A301851.P6014413056218010446

/-! ## A301851.P11973955461862461918

`A085082(A175840(n))%A002808(A033578(n))`
-/

namespace A301851.P11973955461862461918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085082 (A175840 n).toNat) (A002808 (A033578 n).toNat)

end

end A301851.P11973955461862461918

/-! ## A301851.P603141206301664986

`A085082(A120027(n))`
-/

namespace A301851.P603141206301664986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A120027 n).toNat

end

end A301851.P603141206301664986

/-! ## A301851.P8579772504265731857

`A085082(A232646(n+1))`
-/

namespace A301851.P8579772504265731857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A232646 (n + 1)).toNat

end

end A301851.P8579772504265731857

/-!
# A301853: Triangle read by rows: T(n,k) gives the number of distinct distances on an n X k pegboard, with n >= 1, 1 <= k <= n.

The programs for A301853, there is no canonical definition to state claims against.
-/

/-! ## A301853.P10365838668718546761

`A301851(A245300(n)+1)`
-/

namespace A301853.P10365838668718546761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301851 (A245300 n + 1).toNat

end

end A301853.P10365838668718546761

/-! ## A301853.P1002378978897875470

`A141419(n+1)-A073424(A185294(n))`
-/

namespace A301853.P1002378978897875470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - A073424 (A185294 n).toNat

end

end A301853.P1002378978897875470

/-! ## A301853.P7777423425298301101

`A141419(n+1)-A060862(A055879(n+1))`
-/

namespace A301853.P7777423425298301101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - A060862 (A055879 (n + 1)).toNat

end

end A301853.P7777423425298301101

/-! ## A301853.P1033616205380278603

`A141419(n+1)-A025456(A378971(n))`
-/

namespace A301853.P1033616205380278603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - A025456 (A378971 n).toNat

end

end A301853.P1033616205380278603

/-!
# A301854: Number of positive special sums of integer partitions of n.

The programs for A301854, there is no canonical definition to state claims against.
-/

/-! ## A301854.P8009707777444930944

`A304796(n+1)-Δ[A000070(n)]`
-/

namespace A301854.P8009707777444930944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304796 (n + 1) - (f1 (n + 1) - f1 n)

end

end A301854.P8009707777444930944

/-! ## A301854.P18053329316044471090

`A304796(n+1)-record[A035363(n)]`
-/

namespace A301854.P18053329316044471090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304796 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301854.P18053329316044471090

/-! ## A301854.P15587345404656921562

`A304796(n+1)-record[A035444(n)]`
-/

namespace A301854.P15587345404656921562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304796 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301854.P15587345404656921562

/-! ## A301854.P742903072712326736

`A304796(n+1)-A000041(n+1)`
-/

namespace A301854.P742903072712326736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304796 (n + 1) - A000041 (n + 1)

end

end A301854.P742903072712326736

/-! ## A301854.P9205999700544558644

`A304796(n+1)-A058399(∑[n]+1)`
-/

namespace A301854.P9205999700544558644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304796 (n + 1) - A058399 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301854.P9205999700544558644

/-!
# A301855: Number of divisors d|n such that no other divisor of n has the same Heinz weight A056239(d).

The programs for A301855, there is no canonical definition to state claims against.
-/

/-! ## A301855.P6258300588806751932

`A304795(n+1)+1`
-/

namespace A301855.P6258300588806751932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304795 (n + 1) + 1

end

end A301855.P6258300588806751932

/-! ## A301855.P15790931514815835162

`A348553(A304795(n+1))`
-/

namespace A301855.P15790931514815835162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A304795 (n + 1)).toNat

end

end A301855.P15790931514815835162

/-! ## A301855.P16114474774361334644

`2*A299701(n+1)-A299701(A100577(n+1))`
-/

namespace A301855.P16114474774361334644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299701 (n + 1) - A299701 (A100577 (n + 1)).toNat

end

end A301855.P16114474774361334644

/-! ## A301855.P3542072090263407450

`A304793(n+1)+1-A299701(A100577(n+1))%A299701(n+1)`
-/

namespace A301855.P3542072090263407450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (n + 1) + 1 - Int.tmod (A299701 (A100577 (n + 1)).toNat) (A299701 (n + 1))

end

end A301855.P3542072090263407450

/-! ## A301855.P6249447230718051363

`A198277(n)%A299701(n+1)+1-A325801(n+1)`
-/

namespace A301855.P6249447230718051363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A299701 (n + 1)) + 1 - A325801 (n + 1)

end

end A301855.P6249447230718051363

/-! ## A301855.P11511411730409531342

`A304793(A033286(n+1))-Δ[A054519(n)]+1`
-/

namespace A301855.P11511411730409531342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A033286 (n + 1)).toNat - (f1 (n + 1) - f1 n) + 1

end

end A301855.P11511411730409531342

/-! ## A301855.P12995361230400244303

`A304793(A020338(n+1))-Δ[A054519(n)]+1`
-/

namespace A301855.P12995361230400244303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A020338 (n + 1)).toNat - (f1 (n + 1) - f1 n) + 1

end

end A301855.P12995361230400244303

/-! ## A301855.P124148402765288663

`A304793(A020338(n+1))+1-A000005(n+1)`
-/

namespace A301855.P124148402765288663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A020338 (n + 1)).toNat + (1 - A000005 (n + 1))

end

end A301855.P124148402765288663

/-! ## A301855.P1235402213219389172

`A299701(n+1)-A325801(A269394(n+1))`
-/

namespace A301855.P1235402213219389172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (n + 1) - A325801 (A269394 (n + 1)).toNat

end

end A301855.P1235402213219389172

/-! ## A301855.P577700729984001204

`A299701(n+1)-and(A100660(n+1), A294927(n+1))`
-/

namespace A301855.P577700729984001204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (n + 1) - Int.land (A100660 (n + 1)) (A294927 (n + 1))

end

end A301855.P577700729984001204

/-!
# A301856: Number of subset-products (greater than 1) of factorizations of n into factors greater than 1.

The programs for A301856, there is no canonical definition to state claims against.
-/

/-! ## A301856.P7039800673737332755

`A301830(n+1)-(A292886(n+1)+A086937(A112624(n+1)))`
-/

namespace A301856.P7039800673737332755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301830 (n + 1) - (A292886 (n + 1) + A086937 (A112624 (n + 1)).toNat)

end

end A301856.P7039800673737332755

/-! ## A301856.P7068270940646218209

`A301829(n+1)-A280618(A000005(A094549((n+1)²+1)+1))`
-/

namespace A301856.P7068270940646218209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301829 (n + 1) - A280618 (A000005 (A094549 ((n + 1) ^ 2 + 1) + 1).toNat).toNat

end

end A301856.P7068270940646218209

/-! ## A301856.P16481828900268198079

`A301829(n+1)-A010054(A331365(n+1))`
-/

namespace A301856.P16481828900268198079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301829 (n + 1) - A010054 (A331365 (n + 1)).toNat

end

end A301856.P16481828900268198079

/-! ## A301856.P18151192329043221395

`A301829(n+1)-A337380(A301829(3*(n+1)))`
-/

namespace A301856.P18151192329043221395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301829 (n + 1) - A337380 (A301829 (3 * (n + 1))).toNat

end

end A301856.P18151192329043221395

/-! ## A301856.P16852363312035273165

`A301829(n+1)-A367512(A301829(3*n+3))`
-/

namespace A301856.P16852363312035273165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301829 (n + 1) - A367512 (A301829 (3 * n + 3)).toNat

end

end A301856.P16852363312035273165

/-!
# A301857: The lesser of j,k, the smallest pair such that A023900(j) + A023900(k) = 0 and j,k are coprime.

The programs for A301857, there is no canonical definition to state claims against.
-/

/-! ## A301857.P16636626470735012934

`A301591(A028310(n))%A053924(3*n+2)`
-/

namespace A301857.P16636626470735012934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301591 (A028310 n).toNat) (A053924 (3 * n + 2))

end

end A301857.P16636626470735012934

/-! ## A301857.P12397910678557353334

`and(A002144(A096997(n+1)), A097002(3*n+1))`
-/

namespace A301857.P12397910678557353334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002144 (A096997 (n + 1)).toNat) (A097002 (3 * n + 1))

end

end A301857.P12397910678557353334

/-! ## A301857.P10393458421210081665

`∏{e}[A000351(n), A301591(#)]`
-/

namespace A301857.P10393458421210081665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A301591 (Nat.factorization (f1 n).natAbs p)

end

end A301857.P10393458421210081665

/-!
# A301861: a(n) is the sum of the decimal digits of (n!)!.

The programs for A301861, there is no canonical definition to state claims against.
-/

/-! ## A301861.P6038541689380746968

`A004152(A000142(n))`
-/

namespace A301861.P6038541689380746968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 (A000142 n).toNat

end

end A301861.P6038541689380746968

/-! ## A301861.P11322580110500835834

`A004152(n!)`
-/

namespace A301861.P11322580110500835834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 (Nat.factorial n)

end

end A301861.P11322580110500835834

/-! ## A301861.P451870466343267239

`A004152(∏[round(1/acot(n))])`
-/

namespace A301861.P451870466343267239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301861.P451870466343267239

/-! ## A301861.P524144539063033548

`A004152(∏[ceil(abs(γ-n))])`
-/

namespace A301861.P524144539063033548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301861.P524144539063033548

/-!
# A301867: Numbers n such that phi(n), psi(n) and sigma(n) are simultaneously perfect squares.

The programs for A301867, there is no canonical definition to state claims against.
-/

/-! ## A301867.P13993157359778630595

`∩[A067781(n+1), A291549(n+1)]`
-/

namespace A301867.P13993157359778630595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301867.P13993157359778630595

/-! ## A301867.P17497678207474950836

`∩[A011257(n+1), A291549(n+1)]`
-/

namespace A301867.P17497678207474950836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301867.P17497678207474950836

/-! ## A301867.P5185963315829910161

`∩[A011257(n+1), A262406(n+1)]`
-/

namespace A301867.P5185963315829910161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301867.P5185963315829910161

/-! ## A301867.P6836199996424524799

`∩[A067781(n+1), A262406(n+1)]`
-/

namespace A301867.P6836199996424524799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301867.P6836199996424524799

/-! ## A301867.P7170674152724671337

`∩[A064710(n+1), A262406(n+1)]`
-/

namespace A301867.P7170674152724671337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A301867.P7170674152724671337

/-!
# A301868: Numbers k such that phi(k, 2) = phi(k+1, 2), where phi(k, 2) = A002472(k).

The programs for A301868, there is no canonical definition to state claims against.
-/

/-! ## A301868.P9517830464741099774

`eq[A002472(n+2), A002472(n+1)]+1`
-/

namespace A301868.P9517830464741099774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A301868.P9517830464741099774

/-! ## A301868.P17422018392368931621

`A204217(A266797(n+1))+A027941(n)`
-/

namespace A301868.P17422018392368931621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (A266797 (n + 1)).toNat + A027941 n

end

end A301868.P17422018392368931621

/-!
# A301871: Number of N- and bowtie-free posets with n elements.

The programs for A301871, there is no canonical definition to state claims against.
-/

/-! ## A301871.P15853189282337363848

`A374541(A037442(n+1))`
-/

namespace A301871.P15853189282337363848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374541 (A037442 (n + 1)).toNat

end

end A301871.P15853189282337363848

/-! ## A301871.P4541041668802348122

`A374541(A065666(n+1))`
-/

namespace A301871.P4541041668802348122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374541 (A065666 (n + 1)).toNat

end

end A301871.P4541041668802348122

/-! ## A301871.P15727517499642325565

`A374541(A141769(n+1))`
-/

namespace A301871.P15727517499642325565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374541 (A141769 (n + 1)).toNat

end

end A301871.P15727517499642325565

/-!
# A301873: Expansion of Product_{k>=1} 1/(1 - x^k)^A007437(k).

The programs for A301873, there is no canonical definition to state claims against.
-/

/-! ## A301873.P11424571645881617461

`A299119(n+1)-A087145(A295296(n+1))`
-/

namespace A301873.P11424571645881617461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299119 (n + 1) - A087145 (A295296 (n + 1)).toNat

end

end A301873.P11424571645881617461

/-! ## A301873.P1161516920453094760

`A226250(A293993(n))-A361850(A091206(n+1))`
-/

namespace A301873.P1161516920453094760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226250 (A293993 n).toNat - A361850 (A091206 (n + 1)).toNat

end

end A301873.P1161516920453094760

/-!
# A301874: Expansion of Product_{k>=1} (1 + x^k)^A007437(k).

The programs for A301874, there is no canonical definition to state claims against.
-/

/-! ## A301874.P2642718042145519779

`A164903(a(n-1))+1+n` with `a(0)=1, a(1)=1`
-/

namespace A301874.P2642718042145519779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A164903 (a (n - 1)).toNat + 1 + (n : ℤ)

end

end A301874.P2642718042145519779

/-! ## A301874.P16157007496497138491

`A176745(ceil(2^(n-1)))+∑[and(n, -2)]`
-/

namespace A301874.P16157007496497138491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176745 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301874.P16157007496497138491

/-! ## A301874.P12651827996487913081

`A325646(A102726(n)+1)+A034691(n)`
-/

namespace A301874.P12651827996487913081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325646 (A102726 n + 1).toNat + A034691 n

end

end A301874.P12651827996487913081

/-!
# A301875: Expansion of Product_{k>=1} 1/(1 - x^k)^A007434(k).

The programs for A301875, there is no canonical definition to state claims against.
-/

/-! ## A301875.P1461262965868031048

`A318719(A225482(3*(n+1))+1)-1`
-/

namespace A301875.P1461262965868031048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (A225482 (3 * (n + 1)) + 1).toNat - 1

end

end A301875.P1461262965868031048

/-! ## A301875.P3953551712185563348

`A000267(A081180(n))-A059036(n)`
-/

namespace A301875.P3953551712185563348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A081180 n).toNat - A059036 n

end

end A301875.P3953551712185563348

/-! ## A301875.P5333927655630163754

`A323647(A000051(n))-A286088(n)`
-/

namespace A301875.P5333927655630163754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (A000051 n).toNat - A286088 n

end

end A301875.P5333927655630163754

/-!
# A301876: Expansion of Product_{k>=1} (1 + x^k)^A007434(k).

The programs for A301876, there is no canonical definition to state claims against.
-/

/-! ## A301876.P6420881014421301948

`A351005(A048413(n+3))-1`
-/

namespace A301876.P6420881014421301948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 (A048413 (n + 3)).toNat - 1

end

end A301876.P6420881014421301948

/-! ## A301876.P12995772765928009620

`A325946(or(2, A034357(n+1)))`
-/

namespace A301876.P12995772765928009620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325946 (Int.lor 2 (A034357 (n + 1))).toNat

end

end A301876.P12995772765928009620

/-! ## A301876.P12802950837981395786

`A163271(n+1)+A088568(A000834(n))`
-/

namespace A301876.P12802950837981395786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + A088568 (A000834 n).toNat

end

end A301876.P12802950837981395786

/-!
# A301877: Group the natural numbers into groups (1),(2),(3),(4),(5,6),(7,8,9),... so that the n-th group contains N(n) terms, where N(n) is the Narayana's cows sequence (A000930). Sequence contains the sum of the terms in the n-th group.

The programs for A301877, there is no canonical definition to state claims against.
-/

/-! ## A301877.P13960673786640391366

`Δ[A000217(record[A135851(n+1)])]`
-/

namespace A301877.P13960673786640391366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301877.P13960673786640391366

/-! ## A301877.P3581362942939979479

`record[Δ[A000217(A078012(n+2))]]`
-/

namespace A301877.P3581362942939979479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A078012 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301877.P3581362942939979479

/-! ## A301877.P11769175667195480027

`Δ[A000217(A068921(n))]+C(2, n+2)`
-/

namespace A301877.P11769175667195480027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A068921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A301877.P11769175667195480027

/-! ## A301877.P9790826194883847478

`A000007(n)+Δ[A000217(A068921(n))]`
-/

namespace A301877.P9790826194883847478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A068921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A301877.P9790826194883847478

/-! ## A301877.P11337894090707708371

`Δ[A057427(n)+A000217(A068921(n))]`
-/

namespace A301877.P11337894090707708371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000217 (A068921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301877.P11337894090707708371

/-!
# A301878: Number of n X n 0..1 arrays with every element equal to 0, 1 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301878, there is no canonical definition to state claims against.
-/

/-! ## A301878.P14166261871971518340

`A301884(∑[4*n]+1)`
-/

namespace A301878.P14166261871971518340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301878.P14166261871971518340

/-! ## A301878.P9450512519100910335

`record[A003982(n)*A301884(n+1)]`
-/

namespace A301878.P9450512519100910335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A301884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301878.P9450512519100910335

/-! ## A301878.P5915037593800984205

`record[gcd(A037012(n), A301884(n+1))]`
-/

namespace A301878.P5915037593800984205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A301884 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301878.P5915037593800984205

/-! ## A301878.P4558236637831051021

`A133687(n)*A301884(A001844(n))`
-/

namespace A301878.P4558236637831051021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133687 n * A301884 (A001844 n).toNat

end

end A301878.P4558236637831051021

/-! ## A301878.P10642584898094915967

`A301884(A001844(n))*A304042(n)`
-/

namespace A301878.P10642584898094915967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A001844 n).toNat * A304042 n

end

end A301878.P10642584898094915967

/-!
# A301879: Number of nX3 0..1 arrays with every element equal to 0, 1 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301879, the canonical program `A301879.P14622561646479927944` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301879 has offset 1).

The definition of A301879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301879.P379052383892762287

`ogf((3+7x+x^2)/(1-x-6x^2-2x^3))`
-/

namespace A301879.P379052383892762287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 7, 1] [1, -1, -6, -2] n

end

end A301879.P379052383892762287

namespace A301879

/-- `ogf((3+7x+x^2)/(1-x-6x^2-2x^3))` -/
def P379052383892762287.Spec : Prop :=
  ∀ n, P379052383892762287.a n = A301879 (n + 1)

end A301879

/-! ## A301879.P14622561646479927944

`a(n-1)+6*a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=10, a(2)=29`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301879

/-- `a(n-1)+6*a(n-2)+2*a(n-3)` -/
def P14622561646479927944.Spec : Prop :=
  ∀ n, (P14622561646479927944.a n : ℤ) = A301879 (n + 1)

theorem P14622561646479927944.correct : P14622561646479927944.Spec := by
  intro n
  simp only [A301879, Nat.add_sub_cancel]

end A301879

/-! ## A301879.P5452031913503061255

`A301884(∑[n+3]+1)`
-/

namespace A301879.P5452031913503061255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301879.P5452031913503061255

namespace A301879

/-- `A301884(∑[n+3]+1)` -/
def P5452031913503061255.Spec : Prop :=
  ∀ n, P5452031913503061255.a n = A301879 (n + 1)

end A301879

/-! ## A301879.P9215288711687834703

`record[A301884(A198464(n+1))]`
-/

namespace A301879.P9215288711687834703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301879.P9215288711687834703

namespace A301879

/-- `record[A301884(A198464(n+1))]` -/
def P9215288711687834703.Spec : Prop :=
  ∀ n, P9215288711687834703.a n = A301879 (n + 1)

end A301879

/-! ## A301879.P15594226507497629512

`A301884(A027379(n+1)+1)/A000040(A135814(n)+2)%2`
-/

namespace A301879.P15594226507497629512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301884 (A027379 (n + 1) + 1).toNat : ℚ) / (Int.tmod (A000040 (A135814 n + 2).toNat) 2 : ℚ)

end

end A301879.P15594226507497629512

namespace A301879

/-- `A301884(A027379(n+1)+1)/A000040(A135814(n)+2)%2` -/
def P15594226507497629512.Spec : Prop :=
  ∀ n, P15594226507497629512.a n = (A301879 (n + 1) : ℚ)

end A301879

/-!
# A301880: Number of n X 4 0..1 arrays with every element equal to 0, 1 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301880, there is no canonical definition to state claims against.
-/

/-! ## A301880.P10489545173799268204

`A301884(A141214(n+1))`
-/

namespace A301880.P10489545173799268204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A141214 (n + 1)).toNat

end

end A301880.P10489545173799268204

/-! ## A301880.P1946348110031578124

`A301884(A027379(n+2))`
-/

namespace A301880.P1946348110031578124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A027379 (n + 2)).toNat

end

end A301880.P1946348110031578124

/-! ## A301880.P10698042203489922675

`A301884(A055998(n+2))`
-/

namespace A301880.P10698042203489922675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A055998 (n + 2)).toNat

end

end A301880.P10698042203489922675

/-! ## A301880.P930474407231809648

`A301884(A155212(n)+5)`
-/

namespace A301880.P930474407231809648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A155212 n + 5).toNat

end

end A301880.P930474407231809648

/-! ## A301880.P11726241232782224511

`A301884(eq[4, A140996(n)])`
-/

namespace A301880.P11726241232782224511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301880.P11726241232782224511

/-!
# A301881: Number of nX5 0..1 arrays with every element equal to 0, 1 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301881, there is no canonical definition to state claims against.
-/

/-! ## A301881.P6262896429215065053

`A301884(A046691(n+3))`
-/

namespace A301881.P6262896429215065053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A046691 (n + 3)).toNat

end

end A301881.P6262896429215065053

/-! ## A301881.P12396848751352524373

`A301884(eq[8, A140996(n)])`
-/

namespace A301881.P12396848751352524373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301881.P12396848751352524373

/-! ## A301881.P14605213420609432189

`A301884(Δ[A023545(n+1)])`
-/

namespace A301881.P14605213420609432189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (f1 (n + 1) - f1 n).toNat

end

end A301881.P14605213420609432189

/-! ## A301881.P11910965345591617613

`A301884(A167499(n)+4*n+5)`
-/

namespace A301881.P11910965345591617613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A167499 n + (4 * n + 5 : ℤ)).toNat

end

end A301881.P11910965345591617613

/-! ## A301881.P4710850042855280504

`A301884(A020742(n)+Δ[A008778(n)])`
-/

namespace A301881.P4710850042855280504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A020742 n + (f1 (n + 1) - f1 n)).toNat

end

end A301881.P4710850042855280504

/-!
# A301882: Number of nX6 0..1 arrays with every element equal to 0, 1 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301882, there is no canonical definition to state claims against.
-/

/-! ## A301882.P9738229779832688596

`A301884(A052905(n+3))`
-/

namespace A301882.P9738229779832688596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A052905 (n + 3)).toNat

end

end A301882.P9738229779832688596

/-! ## A301882.P4142667699572892669

`A301884(A055999(n+3)+1)`
-/

namespace A301882.P4142667699572892669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A055999 (n + 3) + 1).toNat

end

end A301882.P4142667699572892669

/-! ## A301882.P187297986710983538

`A301884(A000217(n+6)-5)`
-/

namespace A301882.P187297986710983538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A000217 (n + 6) - 5).toNat

end

end A301882.P187297986710983538

/-! ## A301882.P798463574221055891

`A301884(A000124(n+6)-6)`
-/

namespace A301882.P798463574221055891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A000124 (n + 6) - 6).toNat

end

end A301882.P798463574221055891

/-! ## A301882.P16330933141481859244

`A301884(Δ[Δ[A006504(n+1)]])`
-/

namespace A301882.P16330933141481859244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (f1 (n + 1) - f1 n).toNat

end

end A301882.P16330933141481859244

/-!
# A301883: Number of nX7 0..1 arrays with every element equal to 0, 1 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301883, there is no canonical definition to state claims against.
-/

/-! ## A301883.P3304927575674549725

`A301884(A055999(n+4))`
-/

namespace A301883.P3304927575674549725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A055999 (n + 4)).toNat

end

end A301883.P3304927575674549725

/-! ## A301883.P6280512689879596117

`A301884(A055998(n+5)-3)`
-/

namespace A301883.P6280512689879596117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A055998 (n + 5) - 3).toNat

end

end A301883.P6280512689879596117

/-! ## A301883.P1437688979745203733

`A301884(A000124(n+7)-7)`
-/

namespace A301883.P1437688979745203733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A000124 (n + 7) - 7).toNat

end

end A301883.P1437688979745203733

/-! ## A301883.P4568641226575604874

`A301884(A000217(n+6)+n+1)`
-/

namespace A301883.P4568641226575604874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A301883.P4568641226575604874

/-! ## A301883.P8719877404686086070

`A301884(2*(n+1)+A000096(n+4)+6)`
-/

namespace A301883.P8719877404686086070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 ((2 * (n + 1) : ℤ) + (A000096 (n + 4) + 6)).toNat

end

end A301883.P8719877404686086070

/-!
# A301884: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301884, there is no canonical definition to state claims against.
-/

/-! ## A301884.P15733038502347540852

`A302081(n+1)+A088194(A172349(n))`
-/

namespace A301884.P15733038502347540852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (n + 1) + A088194 (A172349 n).toNat

end

end A301884.P15733038502347540852

/-! ## A301884.P10720719245171844412

`A302081(n+1)+A088194(A294950(n))`
-/

namespace A301884.P10720719245171844412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (n + 1) + A088194 (A294950 n).toNat

end

end A301884.P10720719245171844412

/-! ## A301884.P15209123290482853984

`A302081(n+1)-A325801(A038247(n))`
-/

namespace A301884.P15209123290482853984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (n + 1) - A325801 (A038247 n).toNat

end

end A301884.P15209123290482853984

/-! ## A301884.P17248211182815144197

`A072089(A324802(n+1)+A302081(n+1))`
-/

namespace A301884.P17248211182815144197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A324802 (n + 1) + A302081 (n + 1)).toNat

end

end A301884.P17248211182815144197

/-! ## A301884.P6281230336706685778

`A302081(n+1)-A324802(A046741(n+1))`
-/

namespace A301884.P6281230336706685778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (n + 1) - A324802 (A046741 (n + 1)).toNat

end

end A301884.P6281230336706685778

/-!
# A301885: Number of 2Xn 0..1 arrays with every element equal to 0, 1 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301885, the canonical program `A301885.P988084138656507925` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301885 has offset 1).

The definition of A301885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301885.P988084138656507925

`2*a(n-1)+a(n-3)-a(n-4)-2*a(n-6)+a(n-7)` with `a(0)=2, a(1)=5, a(2)=10, a(3)=18, a(4)=35, a(5)=74, a(6)=154`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301885

/-- `2*a(n-1)+a(n-3)-a(n-4)-2*a(n-6)+a(n-7)` -/
def P988084138656507925.Spec : Prop :=
  ∀ n, P988084138656507925.a n = A301885 (n + 1)

theorem P988084138656507925.correct : P988084138656507925.Spec := by
  intro n
  simp only [A301885, Nat.add_sub_cancel]

end A301885

/-! ## A301885.P11456833044691439687

`A302081(∑[n+1]+2)`
-/

namespace A301885.P11456833044691439687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A301885.P11456833044691439687

namespace A301885

/-- `A302081(∑[n+1]+2)` -/
def P11456833044691439687.Spec : Prop :=
  ∀ n, P11456833044691439687.a n = A301885 (n + 1)

end A301885

/-! ## A301885.P5143865378303995454

`lcm(A014083(n)+1, A302081(C(n+2, 2)+2))`
-/

namespace A301885.P5143865378303995454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014083 n + 1) (A302081 (Nat.choose (n + 2) 2 + 2))

end

end A301885.P5143865378303995454

namespace A301885

/-- `lcm(A014083(n)+1, A302081(C(n+2, 2)+2))` -/
def P5143865378303995454.Spec : Prop :=
  ∀ n, (P5143865378303995454.a n : ℤ) = A301885 (n + 1)

end A301885

/-! ## A301885.P1858063117182319182

`A301884(∑[n+1]+2)`
-/

namespace A301885.P1858063117182319182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A301885.P1858063117182319182

namespace A301885

/-- `A301884(∑[n+1]+2)` -/
def P1858063117182319182.Spec : Prop :=
  ∀ n, P1858063117182319182.a n = A301885 (n + 1)

end A301885

/-! ## A301885.P16937296225656991215

`A301884(A000096(n)+3)%A245404(n)`
-/

namespace A301885.P16937296225656991215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301884 (A000096 n + 3).toNat) (A245404 n)

end

end A301885.P16937296225656991215

namespace A301885

/-- `A301884(A000096(n)+3)%A245404(n)` -/
def P16937296225656991215.Spec : Prop :=
  ∀ n, P16937296225656991215.a n = A301885 (n + 1)

end A301885

/-!
# A301886: Number of 3Xn 0..1 arrays with every element equal to 0, 1 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301886, there is no canonical definition to state claims against.
-/

/-! ## A301886.P14805674355617400764

`A301884(∑[n+2]+4)`
-/

namespace A301886.P14805674355617400764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301886.P14805674355617400764

/-! ## A301886.P9991408683439017139

`or(char[1], A301884(A167614(n+1)))`
-/

namespace A301886.P9991408683439017139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A301884 (A167614 (n + 1)).toNat)

end

end A301886.P9991408683439017139

/-! ## A301886.P5594188167853940370

`A301884(A167614(n+1))+A185284(n)`
-/

namespace A301886.P5594188167853940370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A167614 (n + 1)).toNat + A185284 n

end

end A301886.P5594188167853940370

/-! ## A301886.P10751510648921695085

`A016192(n)*A301884(A167614(n+1))`
-/

namespace A301886.P10751510648921695085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 n * A301884 (A167614 (n + 1)).toNat

end

end A301886.P10751510648921695085

/-! ## A301886.P8342797516599892815

`A301884(A167614(n+1))%A042004(n)`
-/

namespace A301886.P8342797516599892815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301884 (A167614 (n + 1)).toNat) (A042004 n)

end

end A301886.P8342797516599892815

/-!
# A301887: Number of 4Xn 0..1 arrays with every element equal to 0, 1 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301887, there is no canonical definition to state claims against.
-/

/-! ## A301887.P6743648450142565500

`A301884(A141214(n)+7)`
-/

namespace A301887.P6743648450142565500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A141214 n + 7).toNat

end

end A301887.P6743648450142565500

/-! ## A301887.P1263889696023850588

`A301884(A052905(n)+9)`
-/

namespace A301887.P1263889696023850588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A052905 n + 9).toNat

end

end A301887.P1263889696023850588

/-! ## A301887.P18289351299098598068

`A301884(A055999(n)+10)`
-/

namespace A301887.P18289351299098598068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A055999 n + 10).toNat

end

end A301887.P18289351299098598068

/-! ## A301887.P14174200657108536584

`A301884(A167614(n+2)+1)`
-/

namespace A301887.P14174200657108536584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A167614 (n + 2) + 1).toNat

end

end A301887.P14174200657108536584

/-! ## A301887.P8771218525748050554

`A301884(A166136(n+2)-2)`
-/

namespace A301887.P8771218525748050554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A166136 (n + 2) - 2).toNat

end

end A301887.P8771218525748050554

/-!
# A301888: Number of 5Xn 0..1 arrays with every element equal to 0, 1 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301888, there is no canonical definition to state claims against.
-/

/-! ## A301888.P10914369001510364604

`A301884(A167614(n+3)+2)`
-/

namespace A301888.P10914369001510364604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A167614 (n + 3) + 2).toNat

end

end A301888.P10914369001510364604

/-! ## A301888.P2756796667175826330

`A301884(A000096(n+3)+6)`
-/

namespace A301888.P2756796667175826330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A000096 (n + 3) + 6).toNat

end

end A301888.P2756796667175826330

/-! ## A301888.P3247295453676957245

`A301884(A000217(n+4)+5)`
-/

namespace A301888.P3247295453676957245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A000217 (n + 4) + 5).toNat

end

end A301888.P3247295453676957245

/-! ## A301888.P4626663309887439117

`A301884(A027379(n+2)+8)`
-/

namespace A301888.P4626663309887439117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A027379 (n + 2) + 8).toNat

end

end A301888.P4626663309887439117

/-! ## A301888.P1834242356779000738

`A301884(A052905(n+1)+10)`
-/

namespace A301888.P1834242356779000738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A052905 (n + 1) + 10).toNat

end

end A301888.P1834242356779000738

/-!
# A301889: Number of 6Xn 0..1 arrays with every element equal to 0, 1 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301889, there is no canonical definition to state claims against.
-/

/-! ## A301889.P6129695038234726881

`A301884(A000217(n+5)+6)`
-/

namespace A301889.P6129695038234726881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A000217 (n + 5) + 6).toNat

end

end A301889.P6129695038234726881

/-! ## A301889.P7703703329151448043

`A301884(A034856(n+4)+8)`
-/

namespace A301889.P7703703329151448043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A034856 (n + 4) + 8).toNat

end

end A301889.P7703703329151448043

/-! ## A301889.P10446648868724197882

`A301884(A000124(n+7)-2*(n+4))`
-/

namespace A301889.P10446648868724197882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A000124 (n + 7) - (2 * (n + 4) : ℤ)).toNat

end

end A301889.P10446648868724197882

/-! ## A301889.P17529083828104000351

`A301884(A005843(n+7)+A000124(n+3))`
-/

namespace A301889.P17529083828104000351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A005843 (n + 7) + A000124 (n + 3)).toNat

end

end A301889.P17529083828104000351

/-! ## A301889.P483130180910854378

`A301884(A027379(n+6)-A008486(n+4))`
-/

namespace A301889.P483130180910854378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A027379 (n + 6) - A008486 (n + 4)).toNat

end

end A301889.P483130180910854378

/-!
# A301890: Number of 7Xn 0..1 arrays with every element equal to 0, 1 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A301890, there is no canonical definition to state claims against.
-/

/-! ## A301890.P17868220491706239789

`A301884(A167487(n+5))`
-/

namespace A301890.P17868220491706239789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A167487 (n + 5)).toNat

end

end A301890.P17868220491706239789

/-! ## A301890.P15827503658295473626

`A301884(A166136(n+5)+1)`
-/

namespace A301890.P15827503658295473626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A166136 (n + 5) + 1).toNat

end

end A301890.P15827503658295473626

/-! ## A301890.P159763486578423210

`A301884(A167499(n+5)+2)`
-/

namespace A301890.P159763486578423210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A167499 (n + 5) + 2).toNat

end

end A301890.P159763486578423210

/-! ## A301890.P2113134594265957615

`A301884(A000217(n+6)+7)`
-/

namespace A301890.P2113134594265957615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A000217 (n + 6) + 7).toNat

end

end A301890.P2113134594265957615

/-! ## A301890.P7252224679026213226

`A301884(A000096(n+6)-(n-1))`
-/

namespace A301890.P7252224679026213226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (A000096 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A301890.P7252224679026213226

/-!
# A301891: Number of ways to write 2*n^2 as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers such that x + 3*y + 5*z + 15*w is a power of 4.

The programs for A301891, there is no canonical definition to state claims against.
-/

/-! ## A301891.P5561057132100645662

`A206437(lcm(A001221(2*n+5), A091015(3*(n+1))))`
-/

namespace A301891.P5561057132100645662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206437 (Int.lcm (A001221 (2 * n + 5)) (A091015 (3 * (n + 1))))

end

end A301891.P5561057132100645662

/-! ## A301891.P10949847333511876117

`A068119(2*n+1)+A010815(A131520(n+1))`
-/

namespace A301891.P10949847333511876117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068119 (2 * n + 1) + A010815 (A131520 (n + 1)).toNat

end

end A301891.P10949847333511876117

/-! ## A301891.P14712539412645522268

`A051903(A105330(2*(n+2))*A246376(n+4))`
-/

namespace A301891.P14712539412645522268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A105330 (2 * (n + 2)) * A246376 (n + 4)).toNat

end

end A301891.P14712539412645522268

/-! ## A301891.P1967742056256959285

`A005361(Δ[Δ[(n+1)^3+4*a(n-1)/2]])` with `a(0)=1, a(1)=1`
-/

namespace A301891.P1967742056256959285
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  ((n + 1) ^ 3 : ℚ) + 4 * f2 (n - 1) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A301891.P1967742056256959285

/-!
# A301892: a(n) = A010846(A002182(n)).

The programs for A301892, there is no canonical definition to state claims against.
-/

/-! ## A301892.P1774018627585503910

`A010846(A002182(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A301892.P1774018627585503910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A002182 (n + 1)).toNat

end

end A301892.P1774018627585503910

/-! ## A301892.P13371487215288717718

`A364225(A306802(n+1))`
-/

namespace A301892.P13371487215288717718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364225 (A306802 (n + 1)).toNat

end

end A301892.P13371487215288717718

/-! ## A301892.P10692906217334157181

`A394753(A332034(n+1))`
-/

namespace A301892.P10692906217334157181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394753 (A332034 (n + 1)).toNat

end

end A301892.P10692906217334157181

/-! ## A301892.P9100047748089449190

`A010846(sqrt(A046952(n+1)))`
-/

namespace A301892.P9100047748089449190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (SequenceMachineLib.roundAway (Real.sqrt (A046952 (n + 1) : ℝ))).toNat

end

end A301892.P9100047748089449190

/-!
# A301893: Numbers m that set records for the ratio A010846(m)/A000005(m).

The programs for A301893, there is no canonical definition to state claims against.
-/

/-! ## A301893.P3785288200686594608

`filter[A290490(n+1), A241575(#)]`
-/

namespace A301893.P3785288200686594608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A241575 (f1 j).toNat = 1) n)

end

end A301893.P3785288200686594608

/-! ## A301893.P9280050428306064023

`record[A294492(A054404(2*(n+2)))%A240219(3*n+5)]`
-/

namespace A301893.P9280050428306064023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294492 (A054404 (2 * (n + 2))).toNat) (A240219 (3 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301893.P9280050428306064023

/-! ## A301893.P15155769692628919691

`eq[A034880(n+1), A241575(n)]`
-/

namespace A301893.P15155769692628919691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A301893.P15155769692628919691

/-! ## A301893.P6544532825352214470

`eq[A095247(n+1), A241575(n)]`
-/

namespace A301893.P6544532825352214470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A301893.P6544532825352214470

/-!
# A301895: a(n) = (number of 1's in binary expansion of n)^(number of 0's in binary expansion of n).

The programs for A301895, the canonical program `A301895.P8372007366497196587` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301895 has offset 0).

The definition of A301895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301895.P8372007366497196587

`A000120(n)^A023416(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A301895

/-- `A000120(n)^A023416(n)` -/
def P8372007366497196587.Spec : Prop :=
  ∀ n, P8372007366497196587.a n = (A301895 n : ℚ)

end A301895

/-! ## A301895.P7555561354236177004

`log2(A001316(n))^A023416(n)`
-/

namespace A301895.P7555561354236177004
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) ^ (A023416 n : ℤ)

end

end A301895.P7555561354236177004

namespace A301895

/-- `log2(A001316(n))^A023416(n)` -/
def P7555561354236177004.Spec : Prop :=
  ∀ n, P7555561354236177004.a n = (A301895 n : ℝ)

end A301895

/-! ## A301895.P9131191366524335823

`∑[A088705(n)]^A023416(n)`
-/

namespace A301895.P9131191366524335823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A023416 n : ℤ)

end

end A301895.P9131191366524335823

namespace A301895

/-- `∑[A088705(n)]^A023416(n)` -/
def P9131191366524335823.Spec : Prop :=
  ∀ n, P9131191366524335823.a n = (A301895 n : ℚ)

end A301895

/-! ## A301895.P2218103921024902380

`(n-A011371(n))^A023416(n)`
-/

namespace A301895.P2218103921024902380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A011371 n : ℚ) ^ (A023416 n : ℤ)

end

end A301895.P2218103921024902380

namespace A301895

/-- `(n-A011371(n))^A023416(n)` -/
def P2218103921024902380.Spec : Prop :=
  ∀ n, P2218103921024902380.a n = (A301895 n : ℚ)

end A301895

/-! ## A301895.P3953024106598707979

`A001222(A071044(n))^A023416(n)`
-/

namespace A301895.P3953024106598707979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A071044 n).toNat : ℚ) ^ (A023416 n : ℤ)

end

end A301895.P3953024106598707979

namespace A301895

/-- `A001222(A071044(n))^A023416(n)` -/
def P3953024106598707979.Spec : Prop :=
  ∀ n, P3953024106598707979.a n = (A301895 n : ℚ)

end A301895

/-! ## A301895.P1318078285714952193

`A002487(A001316(n)-1)^A023416(n)`
-/

namespace A301895.P1318078285714952193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (A001316 n - 1).toNat : ℚ) ^ (A023416 n : ℤ)

end

end A301895.P1318078285714952193

namespace A301895

/-- `A002487(A001316(n)-1)^A023416(n)` -/
def P1318078285714952193.Spec : Prop :=
  ∀ n, P1318078285714952193.a n = (A301895 n : ℚ)

end A301895

/-! ## A301895.P6884687374221786463

`(A070939(n)-A023416(n))^A023416(n)`
-/

namespace A301895.P6884687374221786463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 n - A023416 n : ℚ) ^ (A023416 n : ℤ)

end

end A301895.P6884687374221786463

namespace A301895

/-- `(A070939(n)-A023416(n))^A023416(n)` -/
def P6884687374221786463.Spec : Prop :=
  ∀ n, P6884687374221786463.a n = (A301895 n : ℚ)

end A301895

/-! ## A301895.P1855991069542906815

`(A324467(n)/3)^A023416(n)`
-/

namespace A301895.P1855991069542906815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A324467 n : ℚ) / 3) ^ (A023416 n : ℤ)

end

end A301895.P1855991069542906815

namespace A301895

/-- `(A324467(n)/3)^A023416(n)` -/
def P1855991069542906815.Spec : Prop :=
  ∀ n, P1855991069542906815.a n = (A301895 n : ℚ)

end A301895

/-! ## A301895.P5501084004795573276

`A001222(A278222(n))^A023416(n)`
-/

namespace A301895.P5501084004795573276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A278222 n).toNat : ℚ) ^ (A023416 n : ℤ)

end

end A301895.P5501084004795573276

namespace A301895

/-- `A001222(A278222(n))^A023416(n)` -/
def P5501084004795573276.Spec : Prop :=
  ∀ n, P5501084004795573276.a n = (A301895 n : ℚ)

end A301895

/-! ## A301895.P5693578056534223691

`A001222(A048883(n))^A023416(n)`
-/

namespace A301895.P5693578056534223691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A048883 n).toNat : ℚ) ^ (A023416 n : ℤ)

end

end A301895.P5693578056534223691

namespace A301895

/-- `A001222(A048883(n))^A023416(n)` -/
def P5693578056534223691.Spec : Prop :=
  ∀ n, P5693578056534223691.a n = (A301895 n : ℚ)

end A301895

/-! ## A301895.P17746017609652327935

`A001222(A005940(n+1))^A023416(n)`
-/

namespace A301895.P17746017609652327935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A005940 (n + 1)).toNat : ℚ) ^ (A023416 n : ℤ)

end

end A301895.P17746017609652327935

namespace A301895

/-- `A001222(A005940(n+1))^A023416(n)` -/
def P17746017609652327935.Spec : Prop :=
  ∀ n, P17746017609652327935.a n = (A301895 n : ℚ)

end A301895

/-! ## A301895.P15722776197773895969

`A001222(A019565(n))^A023416(n)`
-/

namespace A301895.P15722776197773895969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A019565 n).toNat : ℚ) ^ (A023416 n : ℤ)

end

end A301895.P15722776197773895969

namespace A301895

/-- `A001222(A019565(n))^A023416(n)` -/
def P15722776197773895969.Spec : Prop :=
  ∀ n, P15722776197773895969.a n = (A301895 n : ℚ)

end A301895

/-! ## A301895.P3928808789742766414

`A001221(A057335(n))^A023416(n)`
-/

namespace A301895.P3928808789742766414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (A057335 n).toNat : ℚ) ^ (A023416 n : ℤ)

end

end A301895.P3928808789742766414

namespace A301895

/-- `A001221(A057335(n))^A023416(n)` -/
def P3928808789742766414.Spec : Prop :=
  ∀ n, P3928808789742766414.a n = (A301895 n : ℚ)

end A301895

/-!
# A301896: a(n) = product of total number of 0's and total number of 1's in binary expansions of 0, ..., n.

The programs for A301896, the canonical program `A301896.P13543893688146725157` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301896 has offset 0).

The definition of A301896 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, A059015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A301896.P13543893688146725157

`A059015(n)*A000788(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A301896

/-- `A059015(n)*A000788(n)` -/
def P13543893688146725157.Spec : Prop :=
  ∀ n, P13543893688146725157.a n = A301896 n

theorem P13543893688146725157.correct : P13543893688146725157.Spec := by
  intro n
  simp only [A301896]

end A301896

/-! ## A301896.P2861599196410943956

`∑[A023416(n)]*A000788(n)`
-/

namespace A301896.P2861599196410943956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000788 n

end

end A301896.P2861599196410943956

namespace A301896

/-- `∑[A023416(n)]*A000788(n)` -/
def P2861599196410943956.Spec : Prop :=
  ∀ n, P2861599196410943956.a n = A301896 n

end A301896

/-! ## A301896.P10379103083516465288

`∑[A000120(n)]*A059015(n)`
-/

namespace A301896.P10379103083516465288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A059015 n

end

end A301896.P10379103083516465288

namespace A301896

/-- `∑[A000120(n)]*A059015(n)` -/
def P10379103083516465288.Spec : Prop :=
  ∀ n, P10379103083516465288.a n = A301896 n

end A301896

/-! ## A301896.P4824059034024046273

`(A181132(n)+1)*A000788(n)`
-/

namespace A301896.P4824059034024046273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181132 n + 1) * A000788 n

end

end A301896.P4824059034024046273

namespace A301896

/-- `(A181132(n)+1)*A000788(n)` -/
def P4824059034024046273.Spec : Prop :=
  ∀ n, P4824059034024046273.a n = A301896 n

end A301896

/-! ## A301896.P13481898080948490938

`∑[log2(A001316(n))]*A059015(n)`
-/

namespace A301896.P13481898080948490938
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A059015 n : ℝ)

end

end A301896.P13481898080948490938

namespace A301896

/-- `∑[log2(A001316(n))]*A059015(n)` -/
def P13481898080948490938.Spec : Prop :=
  ∀ n, P13481898080948490938.a n = (A301896 n : ℝ)

end A301896

/-! ## A301896.P15338949488530284979

`∑[A000120(n)]*∑[A023416(n)]`
-/

namespace A301896.P15338949488530284979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A301896.P15338949488530284979

namespace A301896

/-- `∑[A000120(n)]*∑[A023416(n)]` -/
def P15338949488530284979.Spec : Prop :=
  ∀ n, P15338949488530284979.a n = A301896 n

end A301896

/-! ## A301896.P16362821524237541673

`∑[∑[A088705(n)]]*A059015(n)`
-/

namespace A301896.P16362821524237541673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A059015 n

end

end A301896.P16362821524237541673

namespace A301896

/-- `∑[∑[A088705(n)]]*A059015(n)` -/
def P16362821524237541673.Spec : Prop :=
  ∀ n, P16362821524237541673.a n = A301896 n

end A301896

/-! ## A301896.P1010589832725657774

`(A301336(n)+A059015(n))*A059015(n)`
-/

namespace A301896.P1010589832725657774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A301336 n + A059015 n) * A059015 n

end

end A301896.P1010589832725657774

namespace A301896

/-- `(A301336(n)+A059015(n))*A059015(n)` -/
def P1010589832725657774.Spec : Prop :=
  ∀ n, P1010589832725657774.a n = A301896 n

end A301896

/-! ## A301896.P11297699068580728669

`(A268289(n)+A181132(n))*A059015(n)`
-/

namespace A301896.P11297699068580728669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A268289 n + A181132 n) * A059015 n

end

end A301896.P11297699068580728669

namespace A301896

/-- `(A268289(n)+A181132(n))*A059015(n)` -/
def P11297699068580728669.Spec : Prop :=
  ∀ n, P11297699068580728669.a n = A301896 n

end A301896

/-! ## A301896.P5921571493062105782

`(A083652(n)-A000788(n))*A000788(n)`
-/

namespace A301896.P5921571493062105782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083652 n - A000788 n) * A000788 n

end

end A301896.P5921571493062105782

namespace A301896

/-- `(A083652(n)-A000788(n))*A000788(n)` -/
def P5921571493062105782.Spec : Prop :=
  ∀ n, P5921571493062105782.a n = A301896 n

end A301896

/-! ## A301896.P6236925633314620756

`(A083652(n)-A059015(n))*A059015(n)`
-/

namespace A301896.P6236925633314620756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083652 n - A059015 n) * A059015 n

end

end A301896.P6236925633314620756

namespace A301896

/-- `(A083652(n)-A059015(n))*A059015(n)` -/
def P6236925633314620756.Spec : Prop :=
  ∀ n, P6236925633314620756.a n = A301896 n

end A301896

/-! ## A301896.P10851287699309376727

`(A000788(n)-A301336(n))*A000788(n)`
-/

namespace A301896.P10851287699309376727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000788 n - A301336 n) * A000788 n

end

end A301896.P10851287699309376727

namespace A301896

/-- `(A000788(n)-A301336(n))*A000788(n)` -/
def P10851287699309376727.Spec : Prop :=
  ∀ n, P10851287699309376727.a n = A301896 n

end A301896

/-!
# A301897: Number of permutations b of length n that satisfy the Diaconis-Graham inequality I_n(b) + EX_n(b) <= D_n(b) with equality.

The programs for A301897, there is no canonical definition to state claims against.
-/

/-! ## A301897.P15619632227170650548

`A369518(∑[n]+n)`
-/

namespace A301897.P15619632227170650548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369518 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A301897.P15619632227170650548

/-! ## A301897.P11648182874963778232

`∑[A302492(ceil(2^(n-1))²)]`
-/

namespace A301897.P11648182874963778232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301897.P11648182874963778232

/-!
# A301898: a(n) = (2*n + 1)! if n is even, a(n) = 2*(2*n + 1)! if n is odd.

The programs for A301898, the canonical program `A301898.P15492717340643867177` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301898 has offset 1).

The definition of A301898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301898.P15492717340643867177

`(2*(n+1)+1)!*(3+(-1)^(n+2))/2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301898

/-- `(2*(n+1)+1)!*(3+(-1)^(n+2))/2` -/
def P15492717340643867177.Spec : Prop :=
  ∀ n, P15492717340643867177.a n = (A301898 (n + 1) : ℚ)

end A301898

/-! ## A301898.P7381390608346176738

`gcd(2, n)*(2*n+3)!`
-/

namespace A301898.P7381390608346176738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * Nat.factorial (2 * n + 3)

end

end A301898.P7381390608346176738

namespace A301898

/-- `gcd(2, n)*(2*n+3)!` -/
def P7381390608346176738.Spec : Prop :=
  ∀ n, (P7381390608346176738.a n : ℤ) = A301898 (n + 1)

end A301898

/-! ## A301898.P18396484114375856272

`(2-and(1, n))*(2*n+3)!`
-/

namespace A301898.P18396484114375856272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 1 n : ℤ)) * (Nat.factorial (2 * n + 3) : ℤ)

end

end A301898.P18396484114375856272

namespace A301898

/-- `(2-and(1, n))*(2*n+3)!` -/
def P18396484114375856272.Spec : Prop :=
  ∀ n, P18396484114375856272.a n = A301898 (n + 1)

end A301898

/-! ## A301898.P9235459673974080965

`((n+1)%2+1)*(2*n+3)!`
-/

namespace A301898.P9235459673974080965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % 2 + 1) * Nat.factorial (2 * n + 3)

end

end A301898.P9235459673974080965

namespace A301898

/-- `((n+1)%2+1)*(2*n+3)!` -/
def P9235459673974080965.Spec : Prop :=
  ∀ n, (P9235459673974080965.a n : ℤ) = A301898 (n + 1)

end A301898

/-! ## A301898.P5301888338174065052

`A380472(n+1)/(n+2)`
-/

namespace A301898.P5301888338174065052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380472 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A301898.P5301888338174065052

namespace A301898

/-- `A380472(n+1)/(n+2)` -/
def P5301888338174065052.Spec : Prop :=
  ∀ n, P5301888338174065052.a n = (A301898 (n + 1) : ℚ)

end A301898

/-!
# A301899: Heinz numbers of strict knapsack partitions. Squarefree numbers such that every divisor has a different Heinz weight A056239(d).

The programs for A301899, there is no canonical definition to state claims against.
-/

/-! ## A301899.P4223643386686582426

`A005117(comp[n*(3*n+16)])`
-/

namespace A301899.P4223643386686582426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n + 16)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A301899.P4223643386686582426

/-! ## A301899.P14098140319472965601

`record[gcd(val(n+1, 10), A067535(n+1))]`
-/

namespace A301899.P14098140319472965601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 10 : ℤ) (A067535 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301899.P14098140319472965601

/-! ## A301899.P8241319679770764562

`record[A067535(A004151(n+1))]`
-/

namespace A301899.P8241319679770764562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A004151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301899.P8241319679770764562

/-! ## A301899.P15132591980796443760

`record[A007913(A299702(n+1))]`
-/

namespace A301899.P15132591980796443760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A299702 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301899.P15132591980796443760

/-! ## A301899.P15151911615714881979

`record[A007913(A364461(n+1))]`
-/

namespace A301899.P15151911615714881979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A364461 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301899.P15151911615714881979

/-! ## A301899.P9436238746289952012

`filter[A239161(n+1), A008966(#)]`
-/

namespace A301899.P9436238746289952012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A301899.P9436238746289952012

/-! ## A301899.P10928118680004350011

`filter[A299702(n+1), A008966(#)]`
-/

namespace A301899.P10928118680004350011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A301899.P10928118680004350011

/-! ## A301899.P11793455968805455646

`filter[A348577(n+1), A008966(#)]`
-/

namespace A301899.P11793455968805455646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A301899.P11793455968805455646

/-! ## A301899.P6004523961840725520

`filter[A364461(n+1), A008966(#)]`
-/

namespace A301899.P6004523961840725520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A301899.P6004523961840725520

/-! ## A301899.P8244792289262667839

`filter[A239161(n+1), A353559(#)]`
-/

namespace A301899.P8244792289262667839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A301899.P8244792289262667839

