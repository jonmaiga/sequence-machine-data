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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

/-!
# A363501: a(n) = smallest product > n of some subset of the divisors of n, or if no product > n exists then a(n) = n.

The programs for A363501, there is no canonical definition to state claims against.
-/

/-! ## A363501.P7317674430616704337

`(n+1)²/(A033677(n+1)*A139553(A076190(n+1)))`
-/

namespace A363501.P7317674430616704337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A033677 (n + 1) * A139553 (A076190 (n + 1)).toNat : ℚ)

end

end A363501.P7317674430616704337

/-! ## A363501.P11369399965839030764

`(n+1)²/(A184955(A083047(n))+A033677(n+1))`
-/

namespace A363501.P11369399965839030764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A184955 (A083047 n).toNat + A033677 (n + 1) : ℚ)

end

end A363501.P11369399965839030764

/-! ## A363501.P14843526360297275643

`A295020(n+1)²/A095163(A095163(n+1)^A010048(n))`
-/

namespace A363501.P14843526360297275643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295020 (n + 1) ^ 2 : ℚ) / (A095163 (SequenceMachineLib.roundAway ((A095163 (n + 1) : ℚ) ^ (A010048 n : ℤ))).toNat : ℚ)

end

end A363501.P14843526360297275643

/-!
# A363503: a(n+1) = 2*a(n) + A298338(n-1), with a(1) = 1.

The programs for A363503, there is no canonical definition to state claims against.
-/

/-! ## A363503.P1320113616294189036

`or(A003477(n), A124769(A184176(n)))`
-/

namespace A363503.P1320113616294189036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003477 n) (A124769 (A184176 n).toNat)

end

end A363503.P1320113616294189036

/-! ## A363503.P18158242900726819511

`or(A074878(n+1), A074879(A074842(n+1)))`
-/

namespace A363503.P18158242900726819511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074878 (n + 1)) (A074879 (A074842 (n + 1)).toNat)

end

end A363503.P18158242900726819511

/-! ## A363503.P9034241771272121429

`∑[A284359(A090017(n))]`
-/

namespace A363503.P9034241771272121429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (A090017 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363503.P9034241771272121429

/-! ## A363503.P17532852824901552828

`∑[A055086(A137952(n+1))]`
-/

namespace A363503.P17532852824901552828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A137952 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363503.P17532852824901552828

/-!
# A363505: Number of hyperplanes spanned by the vertices of an n-cube up to symmetry.

The programs for A363505, there is no canonical definition to state claims against.
-/

/-! ## A363505.P11663609252155095620

`A197299(A000108(n))+A126290(n)`
-/

namespace A363505.P11663609252155095620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197299 (A000108 n).toNat + A126290 n

end

end A363505.P11663609252155095620

/-! ## A363505.P13780870743681385734

`A187188(A066780(n+1))+A068911(n)`
-/

namespace A363505.P13780870743681385734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A066780 (n + 1)).toNat + A068911 n

end

end A363505.P13780870743681385734

/-!
# A363507: G.f. satisfies A(x) = exp( Sum_{k>=1} (3 + A(x^k)) * x^k/k ).

The programs for A363507, there is no canonical definition to state claims against.
-/

/-! ## A363507.P13662796158861554836

`∑[∑[∑[A363548(n)]]]`
-/

namespace A363507.P13662796158861554836
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363548 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363507.P13662796158861554836

/-! ## A363507.P1241014297135659720

`∑[∑[A097992(A289805(n))]]`
-/

namespace A363507.P1241014297135659720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A289805 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363507.P1241014297135659720

/-!
# A363508: G.f. satisfies A(x) = exp( Sum_{k>=1} (4 + A(x^k)) * x^k/k ).

The programs for A363508, there is no canonical definition to state claims against.
-/

/-! ## A363508.P3697158863130946193

`record[A247503(A154638(n))]`
-/

namespace A363508.P3697158863130946193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A154638 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363508.P3697158863130946193

/-!
# A363509: G.f. satisfies A(x) = exp( Sum_{k>=1} (-1)^(k+1) * (3 + A(x^k)) * x^k/k ).

The programs for A363509, there is no canonical definition to state claims against.
-/

/-! ## A363509.P11012902821233537555

`A008647(A263956(n+1))`
-/

namespace A363509.P11012902821233537555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A263956 (n + 1)).toNat

end

end A363509.P11012902821233537555

/-!
# A363510: G.f. satisfies A(x) = exp( Sum_{k>=1} (-1)^(k+1) * (4 + A(x^k)) * x^k/k ).

The programs for A363510, there is no canonical definition to state claims against.
-/

/-! ## A363510.P9874046288771618475

`or(A055099(n), A170905(A059167(n)))`
-/

namespace A363510.P9874046288771618475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055099 n) (A170905 (A059167 n).toNat)

end

end A363510.P9874046288771618475

/-!
# A363511: Number of partitions of [n] having exactly one parity change within their blocks.

The programs for A363511, there is no canonical definition to state claims against.
-/

/-! ## A363511.P14900035807056183406

`A094189(A149418(n))`
-/

namespace A363511.P14900035807056183406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (A149418 n).toNat

end

end A363511.P14900035807056183406

/-! ## A363511.P4024600298256006939

`A327802(A270560(n))`
-/

namespace A363511.P4024600298256006939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327802 (A270560 n).toNat

end

end A363511.P4024600298256006939

/-! ## A363511.P12871177050778496602

`A381781(A369621(n))`
-/

namespace A363511.P12871177050778496602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381781 (A369621 n).toNat

end

end A363511.P12871177050778496602

/-! ## A363511.P3403352069772314661

`A046155(A002628(n)-1)`
-/

namespace A363511.P3403352069772314661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A002628 n - 1).toNat

end

end A363511.P3403352069772314661

/-!
# A363513: a(1) = 2, then a(n) is the least prime p > a(n - 1) such that p + a(n-1) and p - a(n-1) have the same number of prime factors counted with multiplicity.

The programs for A363513, there is no canonical definition to state claims against.
-/

/-! ## A363513.P16368532203371398892

`A212300(A007204(n))`
-/

namespace A363513.P16368532203371398892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212300 (A007204 n).toNat

end

end A363513.P16368532203371398892

/-! ## A363513.P852961691826381509

`A371445(A033609(n))`
-/

namespace A363513.P852961691826381509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371445 (A033609 n).toNat

end

end A363513.P852961691826381509

/-! ## A363513.P6590068441386755902

`A371445(A033614(n))`
-/

namespace A363513.P6590068441386755902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371445 (A033614 n).toNat

end

end A363513.P6590068441386755902

/-!
# A363514: Sum of divisors of 3*n-1 of form 3*k+1.

The programs for A363514, the canonical program `A363514.P8280304186650269992` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363514 has offset 1).

The definition of A363514 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363514.P8280304186650269992

`A078181(3*(n+1)-1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A363514

/-- `A078181(3*(n+1)-1)` -/
def P8280304186650269992.Spec : Prop :=
  ∀ n, P8280304186650269992.a n = A363514 (n + 1)

theorem P8280304186650269992.correct : P8280304186650269992.Spec := by
  intro n
  simp only [A363514, Nat.add_sub_cancel]

end A363514

/-! ## A363514.P9649050594258710790

`A144615(n)-A363890(n+1)`
-/

namespace A363514.P9649050594258710790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144615 n - A363890 (n + 1)

end

end A363514.P9649050594258710790

namespace A363514

/-- `A144615(n)-A363890(n+1)` -/
def P9649050594258710790.Spec : Prop :=
  ∀ n, P9649050594258710790.a n = A363514 (n + 1)

end A363514

/-! ## A363514.P3877467463108557052

`A293897(3*n+2)`
-/

namespace A363514.P3877467463108557052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293897 (3 * n + 2)

end

end A363514.P3877467463108557052

namespace A363514

/-- `A293897(3*n+2)` -/
def P3877467463108557052.Spec : Prop :=
  ∀ n, P3877467463108557052.a n = A363514 (n + 1)

end A363514

/-! ## A363514.P9456920550724906579

`A082051(3*n+2)`
-/

namespace A363514.P9456920550724906579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082051 (3 * n + 2)

end

end A363514.P9456920550724906579

namespace A363514

/-- `A082051(3*n+2)` -/
def P9456920550724906579.Spec : Prop :=
  ∀ n, P9456920550724906579.a n = A363514 (n + 1)

end A363514

/-! ## A363514.P13732065353750692130

`A326400(3*n+2)`
-/

namespace A363514.P13732065353750692130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326400 (3 * n + 2)

end

end A363514.P13732065353750692130

namespace A363514

/-- `A326400(3*n+2)` -/
def P13732065353750692130.Spec : Prop :=
  ∀ n, P13732065353750692130.a n = A363514 (n + 1)

end A363514

/-!
# A363518: Concentric square numbers on the faces of an n X n X n cube.

The programs for A363518, the canonical program `A363518.P7486761321394610288` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363518 has offset 1).

The definition of A363518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363518.P7486761321394610288

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=8, a(2)=20, a(3)=32, a(4)=50, a(5)=80`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A363518

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P7486761321394610288.Spec : Prop :=
  ∀ n, P7486761321394610288.a n = A363518 (n + 1)

theorem P7486761321394610288.correct : P7486761321394610288.Spec := by
  intro n
  simp only [A363518, Nat.add_sub_cancel]

end A363518

/-!
# A363519: Number T(n,k) of partitions of [n] having exactly k parity changes within the partition, n>=0, 0<=k<=max(0,n-1), read by rows.

The programs for A363519, there is no canonical definition to state claims against.
-/

/-! ## A363519.P14608685437095191714

`and(A257905(A332606(n+4)), A296612(n))`
-/

namespace A363519.P14608685437095191714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A257905 (A332606 (n + 4)).toNat) (A296612 n)

end

end A363519.P14608685437095191714

/-! ## A363519.P13958993582892420249

`and(A191032(A376637(n+5)), A296612(n))`
-/

namespace A363519.P13958993582892420249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A191032 (A376637 (n + 5)).toNat) (A296612 n)

end

end A363519.P13958993582892420249

/-!
# A363520: Product of the divisors of n that are < sqrt(n).

The programs for A363520, there is no canonical definition to state claims against.
-/

/-! ## A363520.P12290343806435418998

`∏{d}[n+1, #]/A072500(n+1)`
-/

namespace A363520.P12290343806435418998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A072500 (n + 1) : ℚ)

end

end A363520.P12290343806435418998

/-! ## A363520.P17563590593585212554

`A007955(n+1)/A072500(n+1)`
-/

namespace A363520.P17563590593585212554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A072500 (n + 1) : ℚ)

end

end A363520.P17563590593585212554

/-! ## A363520.P6232096515984410548

`A007955(n+1)/(A072499(n+1)*A072501(n+1))`
-/

namespace A363520.P6232096515984410548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A072499 (n + 1) * A072501 (n + 1) : ℚ)

end

end A363520.P6232096515984410548

/-! ## A363520.P2443928161231533898

`A007955(n+1)/ceil((n+1)^A038548(n+1)/A072499(n+1))`
-/

namespace A363520.P2443928161231533898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (⌈(n + 1 : ℚ) ^ (A038548 (n + 1) : ℤ) / (A072499 (n + 1) : ℚ)⌉ : ℚ)

end

end A363520.P2443928161231533898

/-! ## A363520.P3656175077620426942

`gcd(A072499(n+1), A382996(n+1))`
-/

namespace A363520.P3656175077620426942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072499 (n + 1)) (A382996 (n + 1))

end

end A363520.P3656175077620426942

/-!
# A363521: Product of the divisors d of n such that sqrt(n) < d < n.

The programs for A363521, there is no canonical definition to state claims against.
-/

/-! ## A363521.P12014023304246425123

`A007956(n+1)/A072499(n+1)`
-/

namespace A363521.P12014023304246425123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007956 (n + 1) : ℚ) / (A072499 (n + 1) : ℚ)

end

end A363521.P12014023304246425123

/-! ## A363521.P4782391394034810755

`A007955(n+1)/((n+1)*A072499(n+1))`
-/

namespace A363521.P4782391394034810755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / ((n + 1 : ℤ) * A072499 (n + 1) : ℚ)

end

end A363521.P4782391394034810755

/-! ## A363521.P2118051088230467226

`A061538(n+1)/A072499(n+1)*A290480(n+1)`
-/

namespace A363521.P2118051088230467226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061538 (n + 1) : ℚ) / (A072499 (n + 1) : ℚ) * (A290480 (n + 1) : ℚ)

end

end A363521.P2118051088230467226

/-! ## A363521.P17894004475512475828

`(n+1)^(A070824(n+1)/2)/A072499(n+1)`
-/

namespace A363521.P17894004475512475828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A070824 (n + 1) : ℚ) / 2 : ℝ) / (A072499 (n + 1) : ℝ)

end

end A363521.P17894004475512475828

/-! ## A363521.P9725608516163321075

`A066729(A005451(n+1))/A072499(n+1)`
-/

namespace A363521.P9725608516163321075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066729 (A005451 (n + 1)).toNat : ℚ) / (A072499 (n + 1) : ℚ)

end

end A363521.P9725608516163321075

/-! ## A363521.P11735849274512825246

`gcd(A061007(n+1), A066729(n+1))/A072499(n+1)`
-/

namespace A363521.P11735849274512825246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A061007 (n + 1)) (A066729 (n + 1)) : ℚ) / (A072499 (n + 1) : ℚ)

end

end A363521.P11735849274512825246

/-! ## A363521.P78069954620596362

`gcd(A007955(n+1), A307892(n+1))/A072499(n+1)`
-/

namespace A363521.P78069954620596362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A007955 (n + 1)) (A307892 (n + 1)) : ℚ) / (A072499 (n + 1) : ℚ)

end

end A363521.P78069954620596362

/-!
# A363522: Number of integers k such that there are exactly n distinct numbers j with k^2 < j < (k+1)^2 which can be expressed as sum of two squares.

The programs for A363522, there is no canonical definition to state claims against.
-/

/-! ## A363522.P11252375196405473615

`A010882(A112800(n+2)^A010882(n))`
-/

namespace A363522.P11252375196405473615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (SequenceMachineLib.roundAway ((A112800 (n + 2) : ℚ) ^ (A010882 n : ℤ))).toNat

end

end A363522.P11252375196405473615

/-! ## A363522.P4322641943758897830

`A263259(A263259(n)^A105438(n))`
-/

namespace A363522.P4322641943758897830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (SequenceMachineLib.roundAway ((A263259 n : ℚ) ^ (A105438 n : ℤ))).toNat

end

end A363522.P4322641943758897830

/-! ## A363522.P2141529621824231855

`gcd(A030141(n+1), A371793(A160051(3*n)))`
-/

namespace A363522.P2141529621824231855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030141 (n + 1)) (A371793 (A160051 (3 * n)).toNat)

end

end A363522.P2141529621824231855

/-! ## A363522.P996833058022193523

`and(A128679(2*(n+1)), A285512(n+1))`
-/

namespace A363522.P996833058022193523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128679 (2 * (n + 1))) (A285512 (n + 1))

end

end A363522.P996833058022193523

/-! ## A363522.P10804764642257168778

`A373957(A250120(n+3)+xor(n, n+1)+1)`
-/

namespace A363522.P10804764642257168778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373957 (A250120 (n + 3) + (Nat.xor n (n + 1) + 1 : ℤ)).toNat

end

end A363522.P10804764642257168778

/-!
# A363523: k is a term of this sequence if and only if Clausen(k, 0) divides Clausen(k, 2). (Clausen = A160014.)

The programs for A363523, there is no canonical definition to state claims against.
-/

/-! ## A363523.P17497976572297136347

`∩[A033039(n+1), A384349(n+1)]`
-/

namespace A363523.P17497976572297136347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363523.P17497976572297136347

/-! ## A363523.P9228809520946355085

`∩[A190844(n+1), A384349(n+1)]`
-/

namespace A363523.P9228809520946355085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363523.P9228809520946355085

/-! ## A363523.P12711119605431211033

`∩[A191207(n+1), A384349(n+1)]`
-/

namespace A363523.P12711119605431211033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363523.P12711119605431211033

/-! ## A363523.P6832434632612354734

`record[A128555(A290934(n+1))]`
-/

namespace A363523.P6832434632612354734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128555 (A290934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363523.P6832434632612354734

/-! ## A363523.P18340044827722687932

`∩[A094229(n+1), A244780(n+1)]`
-/

namespace A363523.P18340044827722687932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363523.P18340044827722687932

/-!
# A363524: a(n) = 0 if 4 divides n + 1, otherwise (-1)^floor((n + 1) / 4) * 2^floor(n / 2).

The programs for A363524, the canonical program `A363524.P12689076876959330093` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363524 has offset 0).

The definition of A363524 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046978, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363524.P12689076876959330093

`A016116(n)*A046978(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363524

/-- `A016116(n)*A046978(n+1)` -/
def P12689076876959330093.Spec : Prop :=
  ∀ n, P12689076876959330093.a n = A363524 n

theorem P12689076876959330093.correct : P12689076876959330093.Spec := by
  intro n
  simp only [A363524]

end A363524

/-! ## A363524.P11979607996947785743

`-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0`
-/

namespace A363524.P11979607996947785743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 0] fun n a =>
  -(4 * a (n - 4))

end

end A363524.P11979607996947785743

namespace A363524

/-- `-4*a(n-4)` -/
def P11979607996947785743.Spec : Prop :=
  ∀ n, P11979607996947785743.a n = A363524 n

end A363524

/-! ## A363524.P13634095330057460072

`A009545(A392590(n+1))`
-/

namespace A363524.P13634095330057460072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (A392590 (n + 1)).toNat

end

end A363524.P13634095330057460072

namespace A363524

/-- `A009545(A392590(n+1))` -/
def P13634095330057460072.Spec : Prop :=
  ∀ n, P13634095330057460072.a n = A363524 n

end A363524

/-! ## A363524.P14250395316325632942

`A166486(n+1)*A320770(n)`
-/

namespace A363524.P14250395316325632942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (n + 1) * A320770 n

end

end A363524.P14250395316325632942

namespace A363524

/-- `A166486(n+1)*A320770(n)` -/
def P14250395316325632942.Spec : Prop :=
  ∀ n, P14250395316325632942.a n = A363524 n

end A363524

/-! ## A363524.P7665562007425762549

`A009545(n+1-A021913(n+1))`
-/

namespace A363524.P7665562007425762549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 ((n + 1 : ℤ) - A021913 (n + 1)).toNat

end

end A363524.P7665562007425762549

namespace A363524

/-- `A009545(n+1-A021913(n+1))` -/
def P7665562007425762549.Spec : Prop :=
  ∀ n, P7665562007425762549.a n = A363524 n

end A363524

/-! ## A363524.P13502974041596783927

`A099087(n)/A000034(n)`
-/

namespace A363524.P13502974041596783927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 n : ℚ) / (A000034 n : ℚ)

end

end A363524.P13502974041596783927

namespace A363524

/-- `A099087(n)/A000034(n)` -/
def P13502974041596783927.Spec : Prop :=
  ∀ n, P13502974041596783927.a n = (A363524 n : ℚ)

end A363524

/-! ## A363524.P9818049121912418299

`A099087(n)/A133186(n)`
-/

namespace A363524.P9818049121912418299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 n : ℚ) / (A133186 n : ℚ)

end

end A363524.P9818049121912418299

namespace A363524

/-- `A099087(n)/A133186(n)` -/
def P9818049121912418299.Spec : Prop :=
  ∀ n, P9818049121912418299.a n = (A363524 n : ℚ)

end A363524

/-! ## A363524.P14392724971684571683

`A009545(n+1)/A000034(n)`
-/

namespace A363524.P14392724971684571683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009545 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A363524.P14392724971684571683

namespace A363524

/-- `A009545(n+1)/A000034(n)` -/
def P14392724971684571683.Spec : Prop :=
  ∀ n, P14392724971684571683.a n = (A363524 n : ℚ)

end A363524

/-! ## A363524.P9254094391691922302

`A099087(n)/(A000035(n)+1)`
-/

namespace A363524.P9254094391691922302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A363524.P9254094391691922302

namespace A363524

/-- `A099087(n)/(A000035(n)+1)` -/
def P9254094391691922302.Spec : Prop :=
  ∀ n, P9254094391691922302.a n = (A363524 n : ℚ)

end A363524

/-! ## A363524.P5104501449496850002

`A099087(n)/A001511(n+1)`
-/

namespace A363524.P5104501449496850002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 n : ℚ) / (A001511 (n + 1) : ℚ)

end

end A363524.P5104501449496850002

namespace A363524

/-- `A099087(n)/A001511(n+1)` -/
def P5104501449496850002.Spec : Prop :=
  ∀ n, P5104501449496850002.a n = (A363524 n : ℚ)

end A363524

/-! ## A363524.P14574324152056088941

`A099087(n)/A003484(n+1)`
-/

namespace A363524.P14574324152056088941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 n : ℚ) / (A003484 (n + 1) : ℚ)

end

end A363524.P14574324152056088941

namespace A363524

/-- `A099087(n)/A003484(n+1)` -/
def P14574324152056088941.Spec : Prop :=
  ∀ n, P14574324152056088941.a n = (A363524 n : ℚ)

end A363524

/-! ## A363524.P14789545609310709690

`A099087(n)/A006519(n+1)`
-/

namespace A363524.P14789545609310709690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 n : ℚ) / (A006519 (n + 1) : ℚ)

end

end A363524.P14789545609310709690

namespace A363524

/-- `A099087(n)/A006519(n+1)` -/
def P14789545609310709690.Spec : Prop :=
  ∀ n, P14789545609310709690.a n = (A363524 n : ℚ)

end A363524

/-! ## A363524.P9934032239662197463

`A099087(n)/A056832(n+1)`
-/

namespace A363524.P9934032239662197463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 n : ℚ) / (A056832 (n + 1) : ℚ)

end

end A363524.P9934032239662197463

namespace A363524

/-- `A099087(n)/A056832(n+1)` -/
def P9934032239662197463.Spec : Prop :=
  ∀ n, P9934032239662197463.a n = (A363524 n : ℚ)

end A363524

/-! ## A363524.P7396673606245921318

`A099087(n)/A068057(n+1)`
-/

namespace A363524.P7396673606245921318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 n : ℚ) / (A068057 (n + 1) : ℚ)

end

end A363524.P7396673606245921318

namespace A363524

/-- `A099087(n)/A068057(n+1)` -/
def P7396673606245921318.Spec : Prop :=
  ∀ n, P7396673606245921318.a n = (A363524 n : ℚ)

end A363524

/-! ## A363524.P14127185428006443324

`A099087(n)/A078734(n+1)`
-/

namespace A363524.P14127185428006443324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 n : ℚ) / (A078734 (n + 1) : ℚ)

end

end A363524.P14127185428006443324

namespace A363524

/-- `A099087(n)/A078734(n+1)` -/
def P14127185428006443324.Spec : Prop :=
  ∀ n, P14127185428006443324.a n = (A363524 n : ℚ)

end A363524

/-! ## A363524.P2453533475576730895

`A099087(n)/A082388(n+1)`
-/

namespace A363524.P2453533475576730895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 n : ℚ) / (A082388 (n + 1) : ℚ)

end

end A363524.P2453533475576730895

namespace A363524

/-- `A099087(n)/A082388(n+1)` -/
def P2453533475576730895.Spec : Prop :=
  ∀ n, P2453533475576730895.a n = (A363524 n : ℚ)

end A363524

/-! ## A363524.P1458547461801240205

`A099087(n)/A089242(n+1)`
-/

namespace A363524.P1458547461801240205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 n : ℚ) / (A089242 (n + 1) : ℚ)

end

end A363524.P1458547461801240205

namespace A363524

/-- `A099087(n)/A089242(n+1)` -/
def P1458547461801240205.Spec : Prop :=
  ∀ n, P1458547461801240205.a n = (A363524 n : ℚ)

end A363524

/-! ## A363524.P12668038483867902301

`A099087(n)/A105931(n+1)`
-/

namespace A363524.P12668038483867902301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 n : ℚ) / (A105931 (n + 1) : ℚ)

end

end A363524.P12668038483867902301

namespace A363524

/-- `A099087(n)/A105931(n+1)` -/
def P12668038483867902301.Spec : Prop :=
  ∀ n, P12668038483867902301.a n = (A363524 n : ℚ)

end A363524

/-! ## A363524.P2364279431696456648

`A108520(n)/A118827(n+1)`
-/

namespace A363524.P2364279431696456648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108520 n : ℚ) / (A118827 (n + 1) : ℚ)

end

end A363524.P2364279431696456648

namespace A363524

/-- `A108520(n)/A118827(n+1)` -/
def P2364279431696456648.Spec : Prop :=
  ∀ n, P2364279431696456648.a n = (A363524 n : ℚ)

end A363524

/-! ## A363524.P4258781456963364345

`A099087(n)/A138191(n+1)`
-/

namespace A363524.P4258781456963364345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 n : ℚ) / (A138191 (n + 1) : ℚ)

end

end A363524.P4258781456963364345

namespace A363524

/-- `A099087(n)/A138191(n+1)` -/
def P4258781456963364345.Spec : Prop :=
  ∀ n, P4258781456963364345.a n = (A363524 n : ℚ)

end A363524

/-!
# A363525: Number of integer partitions of n with weighted sum divisible by reverse-weighted sum.

The programs for A363525, there is no canonical definition to state claims against.
-/

/-! ## A363525.P7471188270095737138

`A033665(A027672(n))+A000005(n+1)`
-/

namespace A363525.P7471188270095737138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A027672 n).toNat + A000005 (n + 1)

end

end A363525.P7471188270095737138

/-! ## A363525.P10794053738252988789

`A335519(n+1)+A033665(A027672(n))`
-/

namespace A363525.P10794053738252988789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335519 (n + 1) + A033665 (A027672 n).toNat

end

end A363525.P10794053738252988789

/-! ## A363525.P15759052246026860301

`A373954(A089408(n))+A000005(n+1)`
-/

namespace A363525.P15759052246026860301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A089408 n).toNat + A000005 (n + 1)

end

end A363525.P15759052246026860301

/-! ## A363525.P4348184241633959083

`A083892(A192232(n+4))+∏{e}[n+1, #+1]`
-/

namespace A363525.P4348184241633959083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083892 (A192232 (n + 4)).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A363525.P4348184241633959083

/-! ## A363525.P5348391172178716299

`A083892(A192232(n+4))+Δ[A006218(n)]`
-/

namespace A363525.P5348391172178716299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083892 (A192232 (n + 4)).toNat + (f1 (n + 1) - f1 n)

end

end A363525.P5348391172178716299

/-!
# A363529: E.g.f. satisfies A(x) = exp(x * (1 + x * A(x)^4)).

The programs for A363529, there is no canonical definition to state claims against.
-/

/-! ## A363529.P8015858064898963141

`A130497(n^(n+1)-n)`
-/

namespace A363529.P8015858064898963141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (n ^ (n + 1) - n)

end

end A363529.P8015858064898963141

/-!
# A363533: Least k such that n*F(k)+1 is prime, where F = A000045 is the Fibonacci sequence, or -1 if no such k exists.

The programs for A363533, there is no canonical definition to state claims against.
-/

/-! ## A363533.P11518312960705929895

`gcd(A000217(3*n), A371765(A002033(n+1)))`
-/

namespace A363533.P11518312960705929895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (3 * n)) (A371765 (A002033 (n + 1)).toNat)

end

end A363533.P11518312960705929895

/-! ## A363533.P1339926280567233823

`A358193(A034693(n+1)²)`
-/

namespace A363533.P1339926280567233823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358193 (A034693 (n + 1) ^ 2).toNat

end

end A363533.P1339926280567233823

/-! ## A363533.P14103887299994150450

`A358193(A034693(n+1)*A034693(n+1))`
-/

namespace A363533.P14103887299994150450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358193 (A034693 (n + 1) * A034693 (n + 1)).toNat

end

end A363533.P14103887299994150450

/-! ## A363533.P13179317600741201640

`A135523(A034693(n+1)^A034693(n+1))`
-/

namespace A363533.P13179317600741201640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (SequenceMachineLib.roundAway ((A034693 (n + 1) : ℚ) ^ (A034693 (n + 1) : ℤ))).toNat

end

end A363533.P13179317600741201640

/-! ## A363533.P14946898740462933427

`A234743(A034693(n+1)%A339860(3*n+2))`
-/

namespace A363533.P14946898740462933427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234743 (Int.tmod (A034693 (n + 1)) (A339860 (3 * n + 2))).toNat

end

end A363533.P14946898740462933427

/-!
# A363534: Records in A363533.

The programs for A363534, there is no canonical definition to state claims against.
-/

/-! ## A363534.P8879816139109054047

`record[A363533(n+1)]`
-/

namespace A363534.P8879816139109054047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363534.P8879816139109054047

/-! ## A363534.P13022072410889116127

`A363533(A363535(n+1))`
-/

namespace A363534.P13022072410889116127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363533 (A363535 (n + 1)).toNat

end

end A363534.P13022072410889116127

/-!
# A363535: Indices of records in A363533.

The programs for A363535, there is no canonical definition to state claims against.
-/

/-! ## A363535.P12519606228638424494

`∑[A106737(A002452(n))]`
-/

namespace A363535.P12519606228638424494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A002452 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363535.P12519606228638424494

/-! ## A363535.P17127835591222534828

`A359567(A069156(n+1))`
-/

namespace A363535.P17127835591222534828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359567 (A069156 (n + 1)).toNat

end

end A363535.P17127835591222534828

/-!
# A363537: Rewrite A087980(n) = Product_{i=1..m} p(i)^e(i) instead as Sum_{i=1..m} 2^(i-1), where m = omega(A087980(n)) = A001221(A087980(n)).

The programs for A363537, there is no canonical definition to state claims against.
-/

/-! ## A363537.P4263494101703922678

`∑{e}[A087980(n+1), A011782(#)]`
-/

namespace A363537.P4263494101703922678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A011782 (Nat.factorization (f1 n).natAbs p)

end

end A363537.P4263494101703922678

/-! ## A363537.P6964166681171273985

`A297404(A087980(n+1))`
-/

namespace A363537.P6964166681171273985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297404 (A087980 (n + 1)).toNat

end

end A363537.P6964166681171273985

/-! ## A363537.P10410022419225812696

`A297404(∩[A025487(n+1), A133813(n+1)])`
-/

namespace A363537.P10410022419225812696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297404 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A363537.P10410022419225812696

/-! ## A363537.P14183002721543394664

`A297404(∩[A090778(n+1), A133813(n+1)])`
-/

namespace A363537.P14183002721543394664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297404 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A363537.P14183002721543394664

/-! ## A363537.P10846594499837963195

`A297404(∩[A120383(n+1), A133813(n+1)])`
-/

namespace A363537.P10846594499837963195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297404 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A363537.P10846594499837963195

/-!
# A363541: G.f. satisfies A(x) = exp( Sum_{k>=1} (3^k + A(x^k)) * x^k/k ).

The programs for A363541, there is no canonical definition to state claims against.
-/

/-! ## A363541.P3667658616826290770

`A289497(∏[4-2/(n+1)]/2*(n+1)²)+n`
-/

namespace A363541.P3667658616826290770
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (SequenceMachineLib.roundAway ((∏ j ∈ Finset.range (n + 1), f1 j) / 2 * ((n + 1) ^ 2 : ℚ))).toNat + (n : ℤ)

end

end A363541.P3667658616826290770

/-!
# A363542: G.f. satisfies A(x) = exp( Sum_{k>=1} (-1)^(k+1) * (2^k + A(x^k)) * x^k/k ).

The programs for A363542, there is no canonical definition to state claims against.
-/

/-! ## A363542.P17968861332456922923

`xor(A055277(3*n+2), A061008(A059716(n+1)))`
-/

namespace A363542.P17968861332456922923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055277 (3 * n + 2)) (A061008 (A059716 (n + 1)).toNat)

end

end A363542.P17968861332456922923

/-! ## A363542.P12045994760349012123

`A344625(3*n)+A080605(A319212(n+1))`
-/

namespace A363542.P12045994760349012123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344625 (3 * n) + A080605 (A319212 (n + 1)).toNat

end

end A363542.P12045994760349012123

/-!
# A363543: G.f. satisfies A(x) = exp( Sum_{k>=1} (-1)^(k+1) * (3^k + A(x^k)) * x^k/k ).

The programs for A363543, there is no canonical definition to state claims against.
-/

/-! ## A363543.P5261509525412840149

`A337135(A370620(n))+A303684(n+1)`
-/

namespace A363543.P5261509525412840149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (A370620 n).toNat + A303684 (n + 1)

end

end A363543.P5261509525412840149

/-!
# A363545: G.f. satisfies A(x) = exp( Sum_{k>=1} A(x^k) * x^k/(k * (1 - 2*x^k)) ).

The programs for A363545, there is no canonical definition to state claims against.
-/

/-! ## A363545.P3776426518021419429

`A370272(n)+A302242(A370273(n))`
-/

namespace A363545.P3776426518021419429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370272 n + A302242 (A370273 n).toNat

end

end A363545.P3776426518021419429

/-! ## A363545.P15970653538849382719

`A260683(A151285(n+1))+A121373(3*n)`
-/

namespace A363545.P15970653538849382719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260683 (A151285 (n + 1)).toNat + A121373 (3 * n)

end

end A363545.P15970653538849382719

/-!
# A363546: G.f. satisfies A(x) = exp( Sum_{k>=1} A(x^k) * x^k/(k * (1 - 3*x^k)) ).

The programs for A363546, there is no canonical definition to state claims against.
-/

/-! ## A363546.P13137961419636695468

`∑[A008616(n*A172012(n))]`
-/

namespace A363546.P13137961419636695468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 ((n : ℤ) * A172012 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363546.P13137961419636695468

/-! ## A363546.P16774527424949426932

`A062108(A291452(n)+A001090(n))`
-/

namespace A363546.P16774527424949426932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A291452 n + A001090 n).toNat

end

end A363546.P16774527424949426932

/-!
# A363547: G.f. satisfies A(x) = exp( Sum_{k>=1} A(x^k) * x^k/(k * (1 - x^k)^2) ).

The programs for A363547, there is no canonical definition to state claims against.
-/

/-! ## A363547.P968022889977265059

`A108954(A227852(n+1)+lcm(2, 4^n))`
-/

namespace A363547.P968022889977265059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A227852 (n + 1) + (Nat.lcm 2 (4 ^ n) : ℤ)).toNat

end

end A363547.P968022889977265059

/-! ## A363547.P1412941477160905561

`floor(sqrt(A319775(2*n)))`
-/

namespace A363547.P1412941477160905561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A319775 (2 * n))

end

end A363547.P1412941477160905561

/-!
# A363548: G.f. satisfies A(x) = exp( Sum_{k>=1} A(x^k) * x^k/(k * (1 - x^k)^3) ).

The programs for A363548, there is no canonical definition to state claims against.
-/

/-! ## A363548.P17973562632186594451

`Δ[A103221(A001692(n))]`
-/

namespace A363548.P17973562632186594451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A001692 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363548.P17973562632186594451

/-! ## A363548.P16643530217763223693

`A194640(A054662(n+1))`
-/

namespace A363548.P16643530217763223693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A054662 (n + 1)).toNat

end

end A363548.P16643530217763223693

/-!
# A363549: Total number of parity changes within all partitions of [n].

The programs for A363549, there is no canonical definition to state claims against.
-/

/-! ## A363549.P1540542952486536084

`A071940(A150263(n))`
-/

namespace A363549.P1540542952486536084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071940 (A150263 n).toNat

end

end A363549.P1540542952486536084

/-! ## A363549.P2679710577867177739

`A103679(A151472(n))`
-/

namespace A363549.P2679710577867177739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103679 (A151472 n).toNat

end

end A363549.P2679710577867177739

/-!
# A363550: Number of partitions of [n] having exactly one parity change within the partition.

The programs for A363550, there is no canonical definition to state claims against.
-/

/-! ## A363550.P8192481604140737597

`A363519(∑[n]+2-n)`
-/

namespace A363550.P8192481604140737597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363519 (∑ j ∈ Finset.range (n + 1), f1 j + 2 - n)

end

end A363550.P8192481604140737597

/-!
# A363551: Möbius function of rank 3: a(n) = lambda(n) = A008836(n) if n is cubefree and 0 otherwise.

The programs for A363551, the canonical program `A363551.P13229681303949328628` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363551 has offset 1).

The definition of A363551 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, A212793, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363551.P13229681303949328628

`A008836(n+1)*A212793(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A363551

/-- `A008836(n+1)*A212793(n+1)` -/
def P13229681303949328628.Spec : Prop :=
  ∀ n, P13229681303949328628.a n = A363551 (n + 1)

theorem P13229681303949328628.correct : P13229681303949328628.Spec := by
  intro n
  simp only [A363551, Nat.add_sub_cancel]

end A363551

/-! ## A363551.P11293427924826835075

`A307428(n+1)%2`
-/

namespace A363551.P11293427924826835075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307428 (n + 1)) 2

end

end A363551.P11293427924826835075

namespace A363551

/-- `A307428(n+1)%2` -/
def P11293427924826835075.Spec : Prop :=
  ∀ n, P11293427924826835075.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P8476971935201551899

`∏{e}[n+1, A014111(#)]`
-/

namespace A363551.P8476971935201551899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014111 (Nat.factorization (f1 n) p)

end

end A363551.P8476971935201551899

namespace A363551

/-- `∏{e}[n+1, A014111(#)]` -/
def P8476971935201551899.Spec : Prop :=
  ∀ n, P8476971935201551899.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P2605267370506073693

`∏{e}[n+1, A014123(#)]`
-/

namespace A363551.P2605267370506073693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014123 (Nat.factorization (f1 n) p)

end

end A363551.P2605267370506073693

namespace A363551

/-- `∏{e}[n+1, A014123(#)]` -/
def P2605267370506073693.Spec : Prop :=
  ∀ n, P2605267370506073693.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P3509645043242272286

`∏{e}[n+1, A014147(#)]`
-/

namespace A363551.P3509645043242272286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014147 (Nat.factorization (f1 n) p)

end

end A363551.P3509645043242272286

namespace A363551

/-- `∏{e}[n+1, A014147(#)]` -/
def P3509645043242272286.Spec : Prop :=
  ∀ n, P3509645043242272286.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P2415766318763805242

`∏{e}[n+1, A014183(#)]`
-/

namespace A363551.P2415766318763805242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014183 (Nat.factorization (f1 n) p)

end

end A363551.P2415766318763805242

namespace A363551

/-- `∏{e}[n+1, A014183(#)]` -/
def P2415766318763805242.Spec : Prop :=
  ∀ n, P2415766318763805242.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P945206464414953261

`∏{e}[n+1, A014195(#)]`
-/

namespace A363551.P945206464414953261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014195 (Nat.factorization (f1 n) p)

end

end A363551.P945206464414953261

namespace A363551

/-- `∏{e}[n+1, A014195(#)]` -/
def P945206464414953261.Spec : Prop :=
  ∀ n, P945206464414953261.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P5665406231692818111

`A008683(A368886(n+1))`
-/

namespace A363551.P5665406231692818111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A368886 (n + 1)).toNat

end

end A363551.P5665406231692818111

namespace A363551

/-- `A008683(A368886(n+1))` -/
def P5665406231692818111.Spec : Prop :=
  ∀ n, P5665406231692818111.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P15607173390746461655

`A065359(abs(A007427(n+1)))`
-/

namespace A363551.P15607173390746461655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 |A007427 (n + 1)|.toNat

end

end A363551.P15607173390746461655

namespace A363551

/-- `A065359(abs(A007427(n+1)))` -/
def P15607173390746461655.Spec : Prop :=
  ∀ n, P15607173390746461655.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P2481190188749537318

`A064179(n+1)*A189021(n+1)`
-/

namespace A363551.P2481190188749537318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1) * A189021 (n + 1)

end

end A363551.P2481190188749537318

namespace A363551

/-- `A064179(n+1)*A189021(n+1)` -/
def P2481190188749537318.Spec : Prop :=
  ∀ n, P2481190188749537318.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P14075488928655086176

`A076479(n+1)*A189021(n+1)`
-/

namespace A363551.P14075488928655086176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A189021 (n + 1)

end

end A363551.P14075488928655086176

namespace A363551

/-- `A076479(n+1)*A189021(n+1)` -/
def P14075488928655086176.Spec : Prop :=
  ∀ n, P14075488928655086176.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P2752028294744642331

`A129667(n+1)*A189021(n+1)`
-/

namespace A363551.P2752028294744642331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129667 (n + 1) * A189021 (n + 1)

end

end A363551.P2752028294744642331

namespace A363551

/-- `A129667(n+1)*A189021(n+1)` -/
def P2752028294744642331.Spec : Prop :=
  ∀ n, P2752028294744642331.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P9987258512180831857

`A189021(n+1)*A257098(n+1)`
-/

namespace A363551.P9987258512180831857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (n + 1) * A257098 (n + 1)

end

end A363551.P9987258512180831857

namespace A363551

/-- `A189021(n+1)*A257098(n+1)` -/
def P9987258512180831857.Spec : Prop :=
  ∀ n, P9987258512180831857.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P9843603556740647133

`A189021(n+1)*A257099(n+1)`
-/

namespace A363551.P9843603556740647133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (n + 1) * A257099 (n + 1)

end

end A363551.P9843603556740647133

namespace A363551

/-- `A189021(n+1)*A257099(n+1)` -/
def P9843603556740647133.Spec : Prop :=
  ∀ n, P9843603556740647133.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P10726625542195703092

`A189021(n+1)*A307427(n+1)`
-/

namespace A363551.P10726625542195703092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (n + 1) * A307427 (n + 1)

end

end A363551.P10726625542195703092

namespace A363551

/-- `A189021(n+1)*A307427(n+1)` -/
def P10726625542195703092.Spec : Prop :=
  ∀ n, P10726625542195703092.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P16743153451868129705

`A189021(n+1)*A307445(n+1)`
-/

namespace A363551.P16743153451868129705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (n + 1) * A307445 (n + 1)

end

end A363551.P16743153451868129705

namespace A363551

/-- `A189021(n+1)*A307445(n+1)` -/
def P16743153451868129705.Spec : Prop :=
  ∀ n, P16743153451868129705.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P2182804045289315547

`A212793(n+1)*A307420(n+1)`
-/

namespace A363551.P2182804045289315547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A307420 (n + 1)

end

end A363551.P2182804045289315547

namespace A363551

/-- `A212793(n+1)*A307420(n+1)` -/
def P2182804045289315547.Spec : Prop :=
  ∀ n, P2182804045289315547.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P13263548629707243892

`A212793(n+1)*A307428(n+1)`
-/

namespace A363551.P13263548629707243892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A307428 (n + 1)

end

end A363551.P13263548629707243892

namespace A363551

/-- `A212793(n+1)*A307428(n+1)` -/
def P13263548629707243892.Spec : Prop :=
  ∀ n, P13263548629707243892.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P17122383186216075943

`A189021(n+1)*A332732(n+1)`
-/

namespace A363551.P17122383186216075943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (n + 1) * A332732 (n + 1)

end

end A363551.P17122383186216075943

namespace A363551

/-- `A189021(n+1)*A332732(n+1)` -/
def P17122383186216075943.Spec : Prop :=
  ∀ n, P17122383186216075943.a n = A363551 (n + 1)

end A363551

/-! ## A363551.P18113951473829679431

`A212793(n+1)*A355936(n+1)`
-/

namespace A363551.P18113951473829679431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A355936 (n + 1)

end

end A363551.P18113951473829679431

namespace A363551

/-- `A212793(n+1)*A355936(n+1)` -/
def P18113951473829679431.Spec : Prop :=
  ∀ n, P18113951473829679431.a n = A363551 (n + 1)

end A363551

/-!
# A363552: Möbius function of rank 4: a(n) = lambda(n) = A008836(n) if n is biquadratefree (A046100) and 0 otherwise.

The programs for A363552, the canonical program `A363552.P3179692945448450413` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363552 has offset 1).

The definition of A363552 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, A307430, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363552.P3179692945448450413

`A008836(n+1)*A307430(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A363552

/-- `A008836(n+1)*A307430(n+1)` -/
def P3179692945448450413.Spec : Prop :=
  ∀ n, P3179692945448450413.a n = A363552 (n + 1)

theorem P3179692945448450413.correct : P3179692945448450413.Spec := by
  intro n
  simp only [A363552, Nat.add_sub_cancel]

end A363552

/-! ## A363552.P16018621249071136587

`A007428(n+1)%2`
-/

namespace A363552.P16018621249071136587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007428 (n + 1)) 2

end

end A363552.P16018621249071136587

namespace A363552

/-- `A007428(n+1)%2` -/
def P16018621249071136587.Spec : Prop :=
  ∀ n, P16018621249071136587.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P12203727194696814415

`A166234(n+1)*A307445(n+1)`
-/

namespace A363552.P12203727194696814415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166234 (n + 1) * A307445 (n + 1)

end

end A363552.P12203727194696814415

namespace A363552

/-- `A166234(n+1)*A307445(n+1)` -/
def P12203727194696814415.Spec : Prop :=
  ∀ n, P12203727194696814415.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P1714339186946063491

`A189022(n+1)*A398576(n+1)`
-/

namespace A363552.P1714339186946063491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189022 (n + 1) * A398576 (n + 1)

end

end A363552.P1714339186946063491

namespace A363552

/-- `A189022(n+1)*A398576(n+1)` -/
def P1714339186946063491.Spec : Prop :=
  ∀ n, P1714339186946063491.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P12522739002598496183

`A307430(n+1)*A363553(n+1)`
-/

namespace A363552.P12522739002598496183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307430 (n + 1) * A363553 (n + 1)

end

end A363552.P12522739002598496183

namespace A363552

/-- `A307430(n+1)*A363553(n+1)` -/
def P12522739002598496183.Spec : Prop :=
  ∀ n, P12522739002598496183.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P10634654140014711827

`A363553(n+1)*A370598(n+1)`
-/

namespace A363552.P10634654140014711827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363553 (n + 1) * A370598 (n + 1)

end

end A363552.P10634654140014711827

namespace A363552

/-- `A363553(n+1)*A370598(n+1)` -/
def P10634654140014711827.Spec : Prop :=
  ∀ n, P10634654140014711827.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P9146115642137197002

`A007428(n+1)/A386278(n+1)`
-/

namespace A363552.P9146115642137197002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007428 (n + 1) : ℚ) / (A386278 (n + 1) : ℚ)

end

end A363552.P9146115642137197002

namespace A363552

/-- `A007428(n+1)/A386278(n+1)` -/
def P9146115642137197002.Spec : Prop :=
  ∀ n, P9146115642137197002.a n = (A363552 (n + 1) : ℚ)

end A363552

/-! ## A363552.P5690250786211014902

`A053865(n+1)²*A008836(n+1)`
-/

namespace A363552.P5690250786211014902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053865 (n + 1) ^ 2 * A008836 (n + 1)

end

end A363552.P5690250786211014902

namespace A363552

/-- `A053865(n+1)²*A008836(n+1)` -/
def P5690250786211014902.Spec : Prop :=
  ∀ n, P5690250786211014902.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P3620636215772880010

`A307445(n+1)²*A008836(n+1)`
-/

namespace A363552.P3620636215772880010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (n + 1) ^ 2 * A008836 (n + 1)

end

end A363552.P3620636215772880010

namespace A363552

/-- `A307445(n+1)²*A008836(n+1)` -/
def P3620636215772880010.Spec : Prop :=
  ∀ n, P3620636215772880010.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P298869015524212351

`A053865(n+1)²*A363553(n+1)`
-/

namespace A363552.P298869015524212351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053865 (n + 1) ^ 2 * A363553 (n + 1)

end

end A363552.P298869015524212351

namespace A363552

/-- `A053865(n+1)²*A363553(n+1)` -/
def P298869015524212351.Spec : Prop :=
  ∀ n, P298869015524212351.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P1251655445578920306

`A166234(n+1)²*A363553(n+1)`
-/

namespace A363552.P1251655445578920306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166234 (n + 1) ^ 2 * A363553 (n + 1)

end

end A363552.P1251655445578920306

namespace A363552

/-- `A166234(n+1)²*A363553(n+1)` -/
def P1251655445578920306.Spec : Prop :=
  ∀ n, P1251655445578920306.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P4181063485937452746

`A189022(n+1)²*A363553(n+1)`
-/

namespace A363552.P4181063485937452746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189022 (n + 1) ^ 2 * A363553 (n + 1)

end

end A363552.P4181063485937452746

namespace A363552

/-- `A189022(n+1)²*A363553(n+1)` -/
def P4181063485937452746.Spec : Prop :=
  ∀ n, P4181063485937452746.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P3512375349400333006

`∑{d}[n+1, A008683(#)*A227291((n+1)/#)]`
-/

namespace A363552.P3512375349400333006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A227291 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363552.P3512375349400333006

namespace A363552

/-- `∑{d}[n+1, A008683(#)*A227291((n+1)/#)]` -/
def P3512375349400333006.Spec : Prop :=
  ∀ n, P3512375349400333006.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P13200517013704531754

`∑{d}[n+1, A007428(#)*A322327((n+1)/#)]`
-/

namespace A363552.P13200517013704531754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A322327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363552.P13200517013704531754

namespace A363552

/-- `∑{d}[n+1, A007428(#)*A322327((n+1)/#)]` -/
def P13200517013704531754.Spec : Prop :=
  ∀ n, P13200517013704531754.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P2428153277897251160

`∑{d}[n+1, A007427(#)*A323308((n+1)/#)]`
-/

namespace A363552.P2428153277897251160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A323308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363552.P2428153277897251160

namespace A363552

/-- `∑{d}[n+1, A007427(#)*A323308((n+1)/#)]` -/
def P2428153277897251160.Spec : Prop :=
  ∀ n, P2428153277897251160.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P5701161375375458836

`∑{d}[n+1, A158522(#)*A307430((n+1)/#)]`
-/

namespace A363552.P5701161375375458836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A307430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363552.P5701161375375458836

namespace A363552

/-- `∑{d}[n+1, A158522(#)*A307430((n+1)/#)]` -/
def P5701161375375458836.Spec : Prop :=
  ∀ n, P5701161375375458836.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P7034103106995619010

`∑{d}[n+1, A252505(#)*A326415((n+1)/#)]`
-/

namespace A363552.P7034103106995619010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A252505 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363552.P7034103106995619010

namespace A363552

/-- `∑{d}[n+1, A252505(#)*A326415((n+1)/#)]` -/
def P7034103106995619010.Spec : Prop :=
  ∀ n, P7034103106995619010.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P4168106492018980755

`∑{d}[n+1, A247343(#)*A370296((n+1)/#)]`
-/

namespace A363552.P4168106492018980755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247343 d * A370296 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363552.P4168106492018980755

namespace A363552

/-- `∑{d}[n+1, A247343(#)*A370296((n+1)/#)]` -/
def P4168106492018980755.Spec : Prop :=
  ∀ n, P4168106492018980755.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P15399473835120237342

`∑{d}[n+1, A271102(#)*A390490((n+1)/#)]`
-/

namespace A363552.P15399473835120237342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A390490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363552.P15399473835120237342

namespace A363552

/-- `∑{d}[n+1, A271102(#)*A390490((n+1)/#)]` -/
def P15399473835120237342.Spec : Prop :=
  ∀ n, P15399473835120237342.a n = A363552 (n + 1)

end A363552

/-! ## A363552.P5270894029664677518

`A008836(n+1)*A189022(n+1)*A189022(n+1)`
-/

namespace A363552.P5270894029664677518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A189022 (n + 1) * A189022 (n + 1)

end

end A363552.P5270894029664677518

namespace A363552

/-- `A008836(n+1)*A189022(n+1)*A189022(n+1)` -/
def P5270894029664677518.Spec : Prop :=
  ∀ n, P5270894029664677518.a n = A363552 (n + 1)

end A363552

/-!
# A363553: Möbius function of rank 5: a(n) = lambda(n) = A008836(n) if n is 5-free and 0 otherwise.

The programs for A363553, the canonical program `A363553.P1066074787311457405` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363553 has offset 1).

The definition of A363553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363553.P3519530642505365135

`∏{e}[n+1, A014179(#)]`
-/

namespace A363553.P3519530642505365135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014179 (Nat.factorization (f1 n) p)

end

end A363553.P3519530642505365135

namespace A363553

/-- `∏{e}[n+1, A014179(#)]` -/
def P3519530642505365135.Spec : Prop :=
  ∀ n, P3519530642505365135.a n = A363553 (n + 1)

end A363553

/-! ## A363553.P1901123815276455651

`∏{e}[n+1, A014199(#)]`
-/

namespace A363553.P1901123815276455651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014199 (Nat.factorization (f1 n) p)

end

end A363553.P1901123815276455651

namespace A363553

/-- `∏{e}[n+1, A014199(#)]` -/
def P1901123815276455651.Spec : Prop :=
  ∀ n, P1901123815276455651.a n = A363553 (n + 1)

end A363553

/-! ## A363553.P16963371409509842874

`∏{e}[n+1, A014239(#)]`
-/

namespace A363553.P16963371409509842874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014239 (Nat.factorization (f1 n) p)

end

end A363553.P16963371409509842874

namespace A363553

/-- `∏{e}[n+1, A014239(#)]` -/
def P16963371409509842874.Spec : Prop :=
  ∀ n, P16963371409509842874.a n = A363553 (n + 1)

end A363553

/-! ## A363553.P4317427483874704838

`∏{e}[n+1, A014299(#)]`
-/

namespace A363553.P4317427483874704838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014299 (Nat.factorization (f1 n) p)

end

end A363553.P4317427483874704838

namespace A363553

/-- `∏{e}[n+1, A014299(#)]` -/
def P4317427483874704838.Spec : Prop :=
  ∀ n, P4317427483874704838.a n = A363553 (n + 1)

end A363553

/-! ## A363553.P4021262315635563038

`∏{e}[n+1, A014319(#)]`
-/

namespace A363553.P4021262315635563038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014319 (Nat.factorization (f1 n) p)

end

end A363553.P4021262315635563038

namespace A363553

/-- `∏{e}[n+1, A014319(#)]` -/
def P4021262315635563038.Spec : Prop :=
  ∀ n, P4021262315635563038.a n = A363553 (n + 1)

end A363553

/-! ## A363553.P11747289405364988738

`∏{e}[n+1, A014379(#)]`
-/

namespace A363553.P11747289405364988738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014379 (Nat.factorization (f1 n) p)

end

end A363553.P11747289405364988738

namespace A363553

/-- `∏{e}[n+1, A014379(#)]` -/
def P11747289405364988738.Spec : Prop :=
  ∀ n, P11747289405364988738.a n = A363553 (n + 1)

end A363553

/-! ## A363553.P1066074787311457405

`A011582(A369306(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A363553

/-- `A011582(A369306(n+1))` -/
def P1066074787311457405.Spec : Prop :=
  ∀ n, P1066074787311457405.a n = A363553 (n + 1)

theorem P1066074787311457405.correct : P1066074787311457405.Spec := by
  intro n
  simp only [A363553, Nat.add_sub_cancel]

end A363553

/-! ## A363553.P6326869944511569852

`A053981(n+1)²*A008836(n+1)`
-/

namespace A363553.P6326869944511569852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053981 (n + 1) ^ 2 * A008836 (n + 1)

end

end A363553.P6326869944511569852

namespace A363553

/-- `A053981(n+1)²*A008836(n+1)` -/
def P6326869944511569852.Spec : Prop :=
  ∀ n, P6326869944511569852.a n = A363553 (n + 1)

end A363553

/-!
# A363555: Expansion of g.f. A(x) satisfying 0 = Sum_{n>=0} (-1)^n * x^(n*(n-1)/2) * A(x)^(n*(n+1)/2) / Product_{k=2..n+2} (1 - x^k*A(x)^(k+1)).

The programs for A363555, there is no canonical definition to state claims against.
-/

/-! ## A363555.P3247351759488631280

`A261221(A150844(n))`
-/

namespace A363555.P3247351759488631280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (A150844 n).toNat

end

end A363555.P3247351759488631280

/-! ## A363555.P92317632644814889

`A123087(A249934(n)+A114121(n))`
-/

namespace A363555.P92317632644814889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (A249934 n + A114121 n).toNat

end

end A363555.P92317632644814889

/-! ## A363555.P2347612949780806811

`A187186(A197553(n+2)-A004254(n))`
-/

namespace A363555.P2347612949780806811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187186 (A197553 (n + 2) - A004254 n).toNat

end

end A363555.P2347612949780806811

/-!
# A363556: Expansion of g.f. A(x) satisfying 0 = Sum_{n>=0} (-1)^n * x^(n*(n-1)/2) * A(x)^(n^2) / Product_{k=2..n+2} (1 - x^k*A(x)^(2*k+1)).

The programs for A363556, there is no canonical definition to state claims against.
-/

/-! ## A363556.P7504034674789735511

`A137687(A027307(n))-n`
-/

namespace A363556.P7504034674789735511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137687 (A027307 n).toNat - (n : ℤ)

end

end A363556.P7504034674789735511

/-! ## A363556.P10820081749494970332

`abs(A099470(∑[A292554(2*n+1)]))`
-/

namespace A363556.P10820081749494970332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292554 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099470 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A363556.P10820081749494970332

/-!
# A363557: Expansion of g.f. A(x) satisfying 0 = Sum_{n>=0} (-1)^n * x^(n*(n-1)/2) * A(x)^n / Product_{k=1..n+1} (1 - x^k).

The programs for A363557, there is no canonical definition to state claims against.
-/

/-! ## A363557.P13373135474726648431

`A213905(n+2)-A100910(A213906(n+2))`
-/

namespace A363557.P13373135474726648431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213905 (n + 2) - A100910 (A213906 (n + 2)).toNat

end

end A363557.P13373135474726648431

/-! ## A363557.P8634810041038077492

`A247832(A151381(n))-∑[A102683(n)]`
-/

namespace A363557.P8634810041038077492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A151381 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363557.P8634810041038077492

/-! ## A363557.P4319610379611730033

`A247832(A151381(n))-∑[A100910(2*(n+2))]`
-/

namespace A363557.P4319610379611730033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A151381 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363557.P4319610379611730033

/-! ## A363557.P5442589770600246623

`A058386(A147770(n)+1+n)-∑[A102683(n)]`
-/

namespace A363557.P5442589770600246623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 (A147770 n + 1 + (n : ℤ)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363557.P5442589770600246623

/-! ## A363557.P14387746126287735893

`A058386(A147770(n)+1+n)-∑[A100910(2*(n+2))]`
-/

namespace A363557.P14387746126287735893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 (A147770 n + 1 + (n : ℤ)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363557.P14387746126287735893

/-!
# A363558: Expansion of g.f. A(x) = Sum_{n=-oo..+oo} x^n * (2 + x^n)^(2*n).

The programs for A363558, there is no canonical definition to state claims against.
-/

/-! ## A363558.P15614047998436377027

`A268674(C(comp[n*and(n, -n)]+n, n))`
-/

namespace A363558.P15614047998436377027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n) n)

end

end A363558.P15614047998436377027

/-!
# A363559: Expansion of g.f. A(x) = Sum_{n=-oo..+oo} x^n * (3 + x^n)^(2*n).

The programs for A363559, there is no canonical definition to state claims against.
-/

/-! ## A363559.P4313050948816755512

`A026729(A006506(n))+A001019(n)`
-/

namespace A363559.P4313050948816755512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (A006506 n).toNat + A001019 n

end

end A363559.P4313050948816755512

/-!
# A363560: Expansion of g.f. A(x) satisfying A(x)^3 = 1 + x*(A(x) + A(x)^2 + A(x)^9).

The programs for A363560, there is no canonical definition to state claims against.
-/

/-! ## A363560.P6433761551918020701

`A195177(∑[A299166(n)]²)`
-/

namespace A363560.P6433761551918020701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A363560.P6433761551918020701

/-! ## A363560.P9883571029492129581

`∏{p}[A001423(n), A147995(#)]`
-/

namespace A363560.P9883571029492129581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A147995 p

end

end A363560.P9883571029492129581

/-!
# A363562: Expansion of g.f. A(x) satisfying 1 = Sum_{n>=0} x^n * A(x)^n / (1 + x^(n+1)*A(x)^2).

The programs for A363562, there is no canonical definition to state claims against.
-/

/-! ## A363562.P723666046969795777

`∑[A197911(A007564(n))]`
-/

namespace A363562.P723666046969795777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 (A007564 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363562.P723666046969795777

/-! ## A363562.P16349358575093965818

`A060715(A392431(n)+A000079(n))`
-/

namespace A363562.P16349358575093965818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A392431 n + A000079 n).toNat

end

end A363562.P16349358575093965818

/-!
# A363563: Expansion of g.f. A(x) satisfying 1 = Sum_{n>=0} x^n * A(x)^(2*n) / (1 + x^(n+1)*A(x)^3).

The programs for A363563, there is no canonical definition to state claims against.
-/

/-! ## A363563.P8005875017600153036

`A194920(A248053(n))`
-/

namespace A363563.P8005875017600153036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A248053 n).toNat

end

end A363563.P8005875017600153036

/-!
# A363564: Expansion of g.f. A(x) satisfying 1 = Sum_{n>=0} x^n * A(x)^(3*n) / (1 + x^(n+1)*A(x)^4).

The programs for A363564, there is no canonical definition to state claims against.
-/

/-! ## A363564.P7857987358088587323

`A324846(A005413(n))+n`
-/

namespace A363564.P7857987358088587323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324846 (A005413 n).toNat + (n : ℤ)

end

end A363564.P7857987358088587323

/-!
# A363565: G.f. satisfies A(x) = exp( Sum_{k>=1} (2 * (-1)^k + A(x^k)) * x^k/k ).

The programs for A363565, there is no canonical definition to state claims against.
-/

/-! ## A363565.P12107322952875910219

`A378972(A072618(n+1))^A022167(n+1)`
-/

namespace A363565.P12107322952875910219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378972 (A072618 (n + 1)).toNat : ℚ) ^ (A022167 (n + 1) : ℤ)

end

end A363565.P12107322952875910219

/-!
# A363567: G.f. satisfies A(x) = exp( Sum_{k>=1} A(x^k) * x^k/(k * (1 + x^k)^2) ).

The programs for A363567, there is no canonical definition to state claims against.
-/

/-! ## A363567.P9299638808159272820

`A017817(n)+A010054(A000051(n))`
-/

namespace A363567.P9299638808159272820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n + A010054 (A000051 n).toNat

end

end A363567.P9299638808159272820

/-! ## A363567.P16120263895071004423

`A021913(A000079(n))+A017817(n)`
-/

namespace A363567.P16120263895071004423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A000079 n).toNat + A017817 n

end

end A363567.P16120263895071004423

/-! ## A363567.P4262057013120099367

`A079944(A000225(n))+A017817(n)`
-/

namespace A363567.P4262057013120099367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A000225 n).toNat + A017817 n

end

end A363567.P4262057013120099367

/-! ## A363567.P10419820736692505918

`A101040(A001792(n))+A017817(n)`
-/

namespace A363567.P10419820736692505918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (A001792 n).toNat + A017817 n

end

end A363567.P10419820736692505918

/-! ## A363567.P5566065735391897782

`A017817(n)+A000007(A282799(n))`
-/

namespace A363567.P5566065735391897782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n + A000007 (A282799 n).toNat

end

end A363567.P5566065735391897782

/-!
# A363570: Expansion of (1 / sqrt(1 - 8*x + 4*x^2) - 1 / (1 - x)) / 3.

The programs for A363570, the canonical program `A363570.P11081120696578831770` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363570 has offset 0).

The definition of A363570 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069835, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363570.P11081120696578831770

`(A069835(n)-1)/3`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363570

/-- `(A069835(n)-1)/3` -/
def P11081120696578831770.Spec : Prop :=
  ∀ n, P11081120696578831770.a n = (A363570 n : ℚ)

end A363570

/-! ## A363570.P11158505854349105957

`floor(A069835(n)/3)`
-/

namespace A363570.P11158505854349105957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A069835 n : ℚ) / 3⌋

end

end A363570.P11158505854349105957

namespace A363570

/-- `floor(A069835(n)/3)` -/
def P11158505854349105957.Spec : Prop :=
  ∀ n, P11158505854349105957.a n = A363570 n

end A363570

/-! ## A363570.P11995302547238987658

`floor(A081577(∑[4*n])/3)`
-/

namespace A363570.P11995302547238987658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081577 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3⌋

end

end A363570.P11995302547238987658

namespace A363570

/-- `floor(A081577(∑[4*n])/3)` -/
def P11995302547238987658.Spec : Prop :=
  ∀ n, P11995302547238987658.a n = A363570 n

end A363570

/-!
# A363571: Expansion of (1 / sqrt(1 - 10*x + 9*x^2) - 1 / (1 - x)) / 4.

The programs for A363571, the canonical program `A363571.P3654018862182972144` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363571 has offset 0).

The definition of A363571 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084771, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363571.P3654018862182972144

`(A084771(n)-1)/4`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A363571

/-- `(A084771(n)-1)/4` -/
def P3654018862182972144.Spec : Prop :=
  ∀ n, P3654018862182972144.a n = (A363571 n : ℚ)

end A363571

/-! ## A363571.P1273220975281729895

`floor(A084771(n)/4)`
-/

namespace A363571.P1273220975281729895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084771 n : ℚ) / 4⌋

end

end A363571.P1273220975281729895

namespace A363571

/-- `floor(A084771(n)/4)` -/
def P1273220975281729895.Spec : Prop :=
  ∀ n, P1273220975281729895.a n = A363571 n

end A363571

/-! ## A363571.P14502043116154134305

`∑[floor(A051708(n+1)/2)]`
-/

namespace A363571.P14502043116154134305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051708 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363571.P14502043116154134305

namespace A363571

/-- `∑[floor(A051708(n+1)/2)]` -/
def P14502043116154134305.Spec : Prop :=
  ∀ n, P14502043116154134305.a n = A363571 n

end A363571

/-!
# A363573: Expansion of g.f. A(x) satisfying A(x) = 1 + x*(A(x) - A(x)^3 + A(x)^5).

The programs for A363573, there is no canonical definition to state claims against.
-/

/-! ## A363573.P2045469567745211240

`floor(A030101(A129432(n+1))/4)+1`
-/

namespace A363573.P2045469567745211240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030101 (A129432 (n + 1)).toNat : ℚ) / 4⌋ + 1

end

end A363573.P2045469567745211240

/-! ## A363573.P7211523540248600655

`A391650(n)+A391613(A326362(n))`
-/

namespace A363573.P7211523540248600655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391650 n + A391613 (A326362 n).toNat

end

end A363573.P7211523540248600655

/-!
# A363574: Expansion of g.f. A(x) satisfying theta_4(x) = Sum_{n=-oo..+oo} x^n * (2*A(x) - x^n)^(n-1) where theta_4(x) = Sum_{n=-oo..+oo} (-1)^n * x^(n^2) is a Jacobi theta function.

The programs for A363574, there is no canonical definition to state claims against.
-/

/-! ## A363574.P1339177683705859402

`A038572(A003287(n+1)-A059593(n))`
-/

namespace A363574.P1339177683705859402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A003287 (n + 1) - A059593 n).toNat

end

end A363574.P1339177683705859402

/-!
# A363576: a(1) = 1, a(2) = 6; for n > 2, a(n) is the smallest positive number that has not yet appeared such that a(n) has a common factor with a(n-1), has no common factor with a(n-2), while the difference |a(n) - a(n-1)| is distinct from all previous differences |a(i) - a(i-1)|, i=2..n-1.

The programs for A363576, there is no canonical definition to state claims against.
-/

/-! ## A363576.P6851705139765874105

`A360519(n+1)*A374443(A283572(n+1))`
-/

namespace A363576.P6851705139765874105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1) * A374443 (A283572 (n + 1)).toNat

end

end A363576.P6851705139765874105

/-! ## A363576.P7369635125799877683

`A334925(A361108(n+1))*A360519(n+1)`
-/

namespace A363576.P7369635125799877683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334925 (A361108 (n + 1)).toNat * A360519 (n + 1)

end

end A363576.P7369635125799877683

/-! ## A363576.P4354934273742205625

`A318809(A024702(n+3))*A360519(n+1)`
-/

namespace A363576.P4354934273742205625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (A024702 (n + 3)).toNat * A360519 (n + 1)

end

end A363576.P4354934273742205625

/-! ## A363576.P905242261259127195

`A361102(A361104(n+1))*A374443(A283572(n+1))`
-/

namespace A363576.P905242261259127195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (A361104 (n + 1)).toNat * A374443 (A283572 (n + 1)).toNat

end

end A363576.P905242261259127195

/-! ## A363576.P2815576547212800460

`A334925(A361108(n+1))*A361102(A361104(n+1))`
-/

namespace A363576.P2815576547212800460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334925 (A361108 (n + 1)).toNat * A361102 (A361104 (n + 1)).toNat

end

end A363576.P2815576547212800460

/-!
# A363577: Number of inequivalent Hamiltonian paths starting in the lower left corner of an n X n grid graph (paths differing only by rotations and reflections are regarded as equivalent).

The programs for A363577, there is no canonical definition to state claims against.
-/

/-! ## A363577.P17830458015513401364

`A106306(2*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A363577.P17830458015513401364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A106306 (2 * a (n - 1)).toNat

end

end A363577.P17830458015513401364

/-!
# A363578: G.f. satisfies A(x) = exp( Sum_{k>=1} ((-2)^k + A(x^k)) * x^k/k ).

The programs for A363578, there is no canonical definition to state claims against.
-/

/-! ## A363578.P14430412975793245058

`A363580(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A363578.P14430412975793245058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A363580 n - 2 * a (n - 1)

end

end A363578.P14430412975793245058

/-!
# A363582: Number of admissible mesa sets among Stirling permutations of order n.

The programs for A363582, there is no canonical definition to state claims against.
-/

/-! ## A363582.P14511067945763752968

`A355850(A062399(n+1))`
-/

namespace A363582.P14511067945763752968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355850 (A062399 (n + 1)).toNat

end

end A363582.P14511067945763752968

/-! ## A363582.P11697162212898289149

`A355850(A120126(n+1))`
-/

namespace A363582.P11697162212898289149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355850 (A120126 (n + 1)).toNat

end

end A363582.P11697162212898289149

/-! ## A363582.P9051037913595207895

`A355850(A351870(n+1))`
-/

namespace A363582.P9051037913595207895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355850 (A351870 (n + 1)).toNat

end

end A363582.P9051037913595207895

/-! ## A363582.P2297983281241103930

`filter[A355850(n+1), A236862(#)]`
-/

namespace A363582.P2297983281241103930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236862 (f1 j).toNat = 1) n)

end

end A363582.P2297983281241103930

/-! ## A363582.P10145223449359852496

`filter[A355850(n+1), A340363(#)]`
-/

namespace A363582.P10145223449359852496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A363582.P10145223449359852496

/-!
# A363583: Numbers k such that 2*phi(k)+k is a prime, where phi is A000010.

The programs for A363583, there is no canonical definition to state claims against.
-/

/-! ## A363583.P1195180899587921113

`record[A112632(A098828(n+1)+1)]`
-/

namespace A363583.P1195180899587921113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (A098828 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363583.P1195180899587921113

/-! ## A363583.P2136014030837912629

`A368100(lt[A183564(n+7), A151573(n)])`
-/

namespace A363583.P2136014030837912629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183564 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368100 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A363583.P2136014030837912629

/-! ## A363583.P10113927912580661035

`lt[A002778(A005940(n+1)), A217479(n+4)]`
-/

namespace A363583.P10113927912580661035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (A005940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217479 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363583.P10113927912580661035

/-! ## A363583.P11452866588234215411

`A175427(A273131(n+2))`
-/

namespace A363583.P11452866588234215411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A273131 (n + 2)).toNat

end

end A363583.P11452866588234215411

/-! ## A363583.P2553031856891529820

`record[A261698(A245328(2*(n+2)))]`
-/

namespace A363583.P2553031856891529820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261698 (A245328 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363583.P2553031856891529820

/-!
# A363584: Lexicographically least sequence of distinct positive integers, subject to the constraint that if 1 <= k <= a(m), then either a(m+k) < a(m) or a(m+k) > 2*a(m).

The programs for A363584, there is no canonical definition to state claims against.
-/

/-! ## A363584.P15961459535111900113

`A096899(A295296(n+1))`
-/

namespace A363584.P15961459535111900113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096899 (A295296 (n + 1)).toNat

end

end A363584.P15961459535111900113

/-!
# A363588: Number of partitions of [n] having exactly two parity changes within their blocks.

The programs for A363588, there is no canonical definition to state claims against.
-/

/-! ## A363588.P17784110878178705539

`A008651(A193621(n+1))`
-/

namespace A363588.P17784110878178705539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A193621 (n + 1)).toNat

end

end A363588.P17784110878178705539

/-! ## A363588.P14531204557032593709

`A311475(A000110(n))%A000110(n)`
-/

namespace A363588.P14531204557032593709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311475 (A000110 n).toNat) (A000110 n)

end

end A363588.P14531204557032593709

/-! ## A363588.P16379333592602029139

`A054899(A350507(n+1)+A178987(n))`
-/

namespace A363588.P16379333592602029139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A350507 (n + 1) + A178987 n).toNat

end

end A363588.P16379333592602029139

/-! ## A363588.P5906980373604948947

`A111896(A149440(n))-A071325(n+1)`
-/

namespace A363588.P5906980373604948947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111896 (A149440 n).toNat - A071325 (n + 1)

end

end A363588.P5906980373604948947

/-!
# A363589: Number of partitions of [2n+1] such that the largest element of each block is odd.

The programs for A363589, there is no canonical definition to state claims against.
-/

/-! ## A363589.P206933211988113738

`A290383(2*n+1)`
-/

namespace A363589.P206933211988113738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290383 (2 * n + 1)

end

end A363589.P206933211988113738

/-! ## A363589.P10276018964242158550

`record[A290383(n)^∑{e}[xor(n, -n), 2-#]]`
-/

namespace A363589.P10276018964242158550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290383 n : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363589.P10276018964242158550

/-! ## A363589.P6334057399731568147

`record[A290383(A000265(n+1))]`
-/

namespace A363589.P6334057399731568147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290383 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363589.P6334057399731568147

/-! ## A363589.P6295965951266403082

`record[A290383(A338744(n+1))]`
-/

namespace A363589.P6295965951266403082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290383 (A338744 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363589.P6295965951266403082

/-! ## A363589.P3378832344867983214

`record[A290383(A187469(n+1))]`
-/

namespace A363589.P3378832344867983214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290383 (A187469 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363589.P3378832344867983214

/-!
# A363590: a(n) = Sum_{d|n, d odd} d^d.

The programs for A363590, there is no canonical definition to state claims against.
-/

/-! ## A363590.P1221208480921053783

`∑{d}[(n+1)/2^val(n+1, 2), A000312(#)]`
-/

namespace A363590.P1221208480921053783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000312 d

end

end A363590.P1221208480921053783

/-! ## A363590.P4414706057539827726

`A062796(A000265(n+1))`
-/

namespace A363590.P4414706057539827726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062796 (A000265 (n + 1)).toNat

end

end A363590.P4414706057539827726

/-! ## A363590.P15173745039894978667

`A062796(gcd(n+1, A001147(n)))`
-/

namespace A363590.P15173745039894978667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062796 (Int.gcd (n + 1 : ℤ) (A001147 n))

end

end A363590.P15173745039894978667

/-! ## A363590.P7101211886998622802

`∑{d}[A000265(n+1), A000312(#)]`
-/

namespace A363590.P7101211886998622802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000312 d

end

end A363590.P7101211886998622802

/-! ## A363590.P4575858912780795265

`∑{d}[A000265(n+1), A093845(#)]`
-/

namespace A363590.P4575858912780795265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A093845 d

end

end A363590.P4575858912780795265

/-!
# A363591: a(n) = 3*(3^(n-1) - 2^n + 1)/2 - binomial(n,2), n >= 3.

The programs for A363591, the canonical program `A363591.P6553621576082288762` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363591 has offset 3).

The definition of A363591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363591.P6553621576082288762

`3*(3^(n+2)-2^(n+3)+1)/2-C(n+3, 2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A363591

/-- `3*(3^(n+2)-2^(n+3)+1)/2-C(n+3, 2)` -/
def P6553621576082288762.Spec : Prop :=
  ∀ n, P6553621576082288762.a n = (A363591 (n + 3) : ℚ)

end A363591

/-! ## A363591.P5007051726585294474

`(3^(n+3)-3*2^(n+3)-(n+3)²+n+6)/2`
-/

namespace A363591.P5007051726585294474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 3) : ℤ) - (3 * 2 ^ (n + 3) : ℤ) - ((n + 3) ^ 2 : ℤ) + (n + 6 : ℤ) : ℚ) / 2

end

end A363591.P5007051726585294474

namespace A363591

/-- `(3^(n+3)-3*2^(n+3)-(n+3)²+n+6)/2` -/
def P5007051726585294474.Spec : Prop :=
  ∀ n, P5007051726585294474.a n = (A363591 (n + 3) : ℚ)

end A363591

/-! ## A363591.P14476527547067194756

`A094033(n+3)-∑[n+3]+n`
-/

namespace A363591.P14476527547067194756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 (n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)

end

end A363591.P14476527547067194756

namespace A363591

/-- `A094033(n+3)-∑[n+3]+n` -/
def P14476527547067194756.Spec : Prop :=
  ∀ n, P14476527547067194756.a n = A363591 (n + 3)

end A363591

/-! ## A363591.P15784509466857404243

`record[A094033(n)-A161680(n)]`
-/

namespace A363591.P15784509466857404243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 n - A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363591.P15784509466857404243

namespace A363591

/-- `record[A094033(n)-A161680(n)]` -/
def P15784509466857404243.Spec : Prop :=
  ∀ n, P15784509466857404243.a n = A363591 (n + 3)

end A363591

/-! ## A363591.P6415788499468288992

`A293561(n+3)-A000225(n+2)`
-/

namespace A363591.P6415788499468288992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293561 (n + 3) - A000225 (n + 2)

end

end A363591.P6415788499468288992

namespace A363591

/-- `A293561(n+3)-A000225(n+2)` -/
def P6415788499468288992.Spec : Prop :=
  ∀ n, P6415788499468288992.a n = A363591 (n + 3)

end A363591

/-! ## A363591.P3966713370087855451

`∑[A355645(n+2)]-A000225(n+2)`
-/

namespace A363591.P3966713370087855451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355645 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000225 (n + 2)

end

end A363591.P3966713370087855451

namespace A363591

/-- `∑[A355645(n+2)]-A000225(n+2)` -/
def P3966713370087855451.Spec : Prop :=
  ∀ n, P3966713370087855451.a n = A363591 (n + 3)

end A363591

/-! ## A363591.P2142688750469687386

`∑[A001047(n+2)-(n+2)]-A000225(n+2)`
-/

namespace A363591.P2142688750469687386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 2) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000225 (n + 2)

end

end A363591.P2142688750469687386

namespace A363591

/-- `∑[A001047(n+2)-(n+2)]-A000225(n+2)` -/
def P2142688750469687386.Spec : Prop :=
  ∀ n, P2142688750469687386.a n = A363591 (n + 3)

end A363591

/-! ## A363591.P12492050010077566116

`A094033(A008619(2*(n+2)))-A000217(n+2)`
-/

namespace A363591.P12492050010077566116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 (A008619 (2 * (n + 2))).toNat - A000217 (n + 2)

end

end A363591.P12492050010077566116

namespace A363591

/-- `A094033(A008619(2*(n+2)))-A000217(n+2)` -/
def P12492050010077566116.Spec : Prop :=
  ∀ n, P12492050010077566116.a n = A363591 (n + 3)

end A363591

/-!
# A363593: Numbers k such that both A359804(k) and A359804(k+1) are odd.

The programs for A363593, there is no canonical definition to state claims against.
-/

/-! ## A363593.P16350456055817103364

`eq[A165063(n+1), A361503(n+1)]`
-/

namespace A363593.P16350456055817103364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363593.P16350456055817103364

/-! ## A363593.P351261292973323803

`eq[A130130(A361639(n+2)), A361503(n+1)]`
-/

namespace A363593.P351261292973323803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A361639 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363593.P351261292973323803

/-! ## A363593.P15285858817544354974

`eq[A046698(n), A361503(n+1)]`
-/

namespace A363593.P15285858817544354974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363593.P15285858817544354974

/-! ## A363593.P1801756710010031039

`eq[A130130(n), A361503(n+1)]`
-/

namespace A363593.P1801756710010031039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363593.P1801756710010031039

/-! ## A363593.P6693244815936714191

`eq[A329683(n), A361503(n+1)]`
-/

namespace A363593.P6693244815936714191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363593.P6693244815936714191

/-! ## A363593.P14196796549377783345

`lt[A361503(n+1)², A180599(n)]`
-/

namespace A363593.P14196796549377783345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361503 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363593.P14196796549377783345

/-! ## A363593.P14455985022789055179

`eq[A236213(n+1), A361503(n+1)]`
-/

namespace A363593.P14455985022789055179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363593.P14455985022789055179

/-!
# A363594: a(n) = the n-th instance of b(k)/2 such that b(k-1) and b(k-2) are both odd, where b(n) = A359804(n).

The programs for A363594, there is no canonical definition to state claims against.
-/

/-! ## A363594.P18072405560454454758

`A361639(A363593(n+1)+2)`
-/

namespace A363594.P18072405560454454758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361639 (A363593 (n + 1) + 2).toNat

end

end A363594.P18072405560454454758

/-! ## A363594.P8581658300865037346

`A359804(A363593(n+1)+2)/2`
-/

namespace A363594.P8581658300865037346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359804 (A363593 (n + 1) + 2).toNat : ℚ) / 2

end

end A363594.P8581658300865037346

/-! ## A363594.P10710257248057807405

`A361639(eq[A165063(n+1), A361503(n+1)]+2)`
-/

namespace A363594.P10710257248057807405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361639 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A363594.P10710257248057807405

/-! ## A363594.P8694209023141646882

`A361639(eq[A130130(n), A361503(n+1)]+2)`
-/

namespace A363594.P8694209023141646882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361639 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A363594.P8694209023141646882

/-! ## A363594.P6893160660552329889

`A361639(eq[A329683(n), A361503(n+1)]+2)`
-/

namespace A363594.P6893160660552329889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361639 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A363594.P6893160660552329889

/-! ## A363594.P14142539758522888405

`A361639(lt[A361503(n+1)², A180599(n)]+2)`
-/

namespace A363594.P14142539758522888405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361503 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361639 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A363594.P14142539758522888405

/-! ## A363594.P11008782318443305466

`A361639(eq[A236213(n+1), A361503(n+1)]+2)`
-/

namespace A363594.P11008782318443305466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361639 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A363594.P11008782318443305466

/-!
# A363596: a(n) = (Product_{k=1..pi(n+1)} prime(k)^floor(n/(prime(k)-1) ) )/(n+1)!.

The programs for A363596, the canonical program `A363596.P10980254678214324690` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363596 has offset 0).

The definition of A363596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363596.P4770529950700496522

`A091137(n)/(n+1)!`
-/

namespace A363596.P4770529950700496522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 n : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A363596.P4770529950700496522

namespace A363596

/-- `A091137(n)/(n+1)!` -/
def P4770529950700496522.Spec : Prop :=
  ∀ n, P4770529950700496522.a n = (A363596 n : ℚ)

end A363596

/-! ## A363596.P5123803459645854330

`a(n-1)*A027760(n)/(n+1)` with `a(0)=1`
-/

namespace A363596.P5123803459645854330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A027760 n : ℚ) / (n + 1 : ℚ)

end

end A363596.P5123803459645854330

namespace A363596

/-- `a(n-1)*A027760(n)/(n+1)` -/
def P5123803459645854330.Spec : Prop :=
  ∀ n, P5123803459645854330.a n = (A363596 n : ℚ)

end A363596

/-! ## A363596.P10980254678214324690

`ceil(a(n-1)*A176591(n)/(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A363596

/-- `ceil(a(n-1)*A176591(n)/(n+1))` -/
def P10980254678214324690.Spec : Prop :=
  ∀ n, P10980254678214324690.a n = A363596 n

theorem P10980254678214324690.correct : P10980254678214324690.Spec := by
  intro n
  simp only [A363596]

end A363596

/-! ## A363596.P4655234099684135688

`a(n-1)*A176591(n)/A000027(n+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A363596.P4655234099684135688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) * (A176591 n : ℚ) / (A000027 (n + 1) : ℚ)

end

end A363596.P4655234099684135688

namespace A363596

/-- `a(n-1)*A176591(n)/A000027(n+1)` -/
def P4655234099684135688.Spec : Prop :=
  ∀ n, P4655234099684135688.a n = (A363596 n : ℚ)

end A363596

/-! ## A363596.P2422352374987526073

`lcm(2, A176289(n))*a(n-1)/(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A363596.P2422352374987526073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.lcm 2 (A176289 n) : ℚ) * a (n - 1) / (n + 1 : ℚ)

end

end A363596.P2422352374987526073

namespace A363596

/-- `lcm(2, A176289(n))*a(n-1)/(n+1)` -/
def P2422352374987526073.Spec : Prop :=
  ∀ n, P2422352374987526073.a n = (A363596 n : ℚ)

end A363596

/-! ## A363596.P5229041694517021686

`A393943(∑[n+1])`
-/

namespace A363596.P5229041694517021686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393943 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363596.P5229041694517021686

namespace A363596

/-- `A393943(∑[n+1])` -/
def P5229041694517021686.Spec : Prop :=
  ∀ n, P5229041694517021686.a n = A363596 n

end A363596

/-! ## A363596.P1819670388237965368

`A091137(n)/A000142(n+1)`
-/

namespace A363596.P1819670388237965368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 n : ℚ) / (A000142 (n + 1) : ℚ)

end

end A363596.P1819670388237965368

namespace A363596

/-- `A091137(n)/A000142(n+1)` -/
def P1819670388237965368.Spec : Prop :=
  ∀ n, P1819670388237965368.a n = (A363596 n : ℚ)

end A363596

/-! ## A363596.P2240219217418137602

`∏[A141056(n)]/A000142(n+1)`
-/

namespace A363596.P2240219217418137602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A363596.P2240219217418137602

namespace A363596

/-- `∏[A141056(n)]/A000142(n+1)` -/
def P2240219217418137602.Spec : Prop :=
  ∀ n, P2240219217418137602.a n = (A363596 n : ℚ)

end A363596

/-! ## A363596.P2291437649176325430

`A165313(∑[n+1])/A000142(n+1)`
-/

namespace A363596.P2291437649176325430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165313 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A363596.P2291437649176325430

namespace A363596

/-- `A165313(∑[n+1])/A000142(n+1)` -/
def P2291437649176325430.Spec : Prop :=
  ∀ n, P2291437649176325430.a n = (A363596 n : ℚ)

end A363596

/-! ## A363596.P16800678840980427994

`record[A165313(n+1)]/A000142(n+1)`
-/

namespace A363596.P16800678840980427994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165313 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A363596.P16800678840980427994

namespace A363596

/-- `record[A165313(n+1)]/A000142(n+1)` -/
def P16800678840980427994.Spec : Prop :=
  ∀ n, P16800678840980427994.a n = (A363596 n : ℚ)

end A363596

/-!
# A363597: Union of prime powers and numbers that are not squarefree.

The programs for A363597, the canonical program `A363597.P3397001613817327848` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363597 has offset 1).

The definition of A363597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363597.P3397001613817327848

`comp[A120944(n+1)-1]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A363597

/-- `comp[A120944(n+1)-1]+1` -/
def P3397001613817327848.Spec : Prop :=
  ∀ n, (P3397001613817327848.a n : ℤ) = A363597 (n + 1)

theorem P3397001613817327848.correct : P3397001613817327848.Spec := by
  intro n
  simp only [A363597, Nat.add_sub_cancel]

end A363597

/-! ## A363597.P15237754135403574137

`comp[A000469(n+1)%A034263(n)]`
-/

namespace A363597.P15237754135403574137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000469 (n + 1)) (A034263 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A363597.P15237754135403574137

namespace A363597

/-- `comp[A000469(n+1)%A034263(n)]` -/
def P15237754135403574137.Spec : Prop :=
  ∀ n, (P15237754135403574137.a n : ℤ) = A363597 (n + 1)

end A363597

/-! ## A363597.P7831371430255047730

`∪[A013929(n+1), A067126(n+1)]`
-/

namespace A363597.P7831371430255047730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363597.P7831371430255047730

namespace A363597

/-- `∪[A013929(n+1), A067126(n+1)]` -/
def P7831371430255047730.Spec : Prop :=
  ∀ n, (P7831371430255047730.a n : ℤ) = A363597 (n + 1)

end A363597

/-! ## A363597.P9507514606598154844

`∪[A000961(n+1), A126706(n+1)]`
-/

namespace A363597.P9507514606598154844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363597.P9507514606598154844

namespace A363597

/-- `∪[A000961(n+1), A126706(n+1)]` -/
def P9507514606598154844.Spec : Prop :=
  ∀ n, (P9507514606598154844.a n : ℤ) = A363597 (n + 1)

end A363597

/-! ## A363597.P16516544462086894086

`∪[A067126(n+1), A162966(n+1)]`
-/

namespace A363597.P16516544462086894086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363597.P16516544462086894086

namespace A363597

/-- `∪[A067126(n+1), A162966(n+1)]` -/
def P16516544462086894086.Spec : Prop :=
  ∀ n, (P16516544462086894086.a n : ℤ) = A363597 (n + 1)

end A363597

/-! ## A363597.P18107787471053470803

`∪[A013929(n+1), A304686(n+1)]`
-/

namespace A363597.P18107787471053470803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363597.P18107787471053470803

namespace A363597

/-- `∪[A013929(n+1), A304686(n+1)]` -/
def P18107787471053470803.Spec : Prop :=
  ∀ n, (P18107787471053470803.a n : ℤ) = A363597 (n + 1)

end A363597

/-! ## A363597.P6933967514827751710

`lt[A323159(n+1), n+4]+1`
-/

namespace A363597.P6933967514827751710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323159 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A363597.P6933967514827751710

namespace A363597

/-- `lt[A323159(n+1), n+4]+1` -/
def P6933967514827751710.Spec : Prop :=
  ∀ n, (P6933967514827751710.a n : ℤ) = A363597 (n + 1)

end A363597

/-! ## A363597.P7210006740375672138

`lt[A092261(n+1), n+3]+1`
-/

namespace A363597.P7210006740375672138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A363597.P7210006740375672138

namespace A363597

/-- `lt[A092261(n+1), n+3]+1` -/
def P7210006740375672138.Spec : Prop :=
  ∀ n, (P7210006740375672138.a n : ℤ) = A363597 (n + 1)

end A363597

/-! ## A363597.P7208656100316587156

`eq[1, A292262(A074206(n)²)]`
-/

namespace A363597.P7208656100316587156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292262 (A074206 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363597.P7208656100316587156

namespace A363597

/-- `eq[1, A292262(A074206(n)²)]` -/
def P7208656100316587156.Spec : Prop :=
  ∀ n, (P7208656100316587156.a n : ℤ) = A363597 (n + 1)

end A363597

/-! ## A363597.P1214922883937588056

`lt[A323439(n+1), 2]+1`
-/

namespace A363597.P1214922883937588056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323439 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A363597.P1214922883937588056

namespace A363597

/-- `lt[A323439(n+1), 2]+1` -/
def P1214922883937588056.Spec : Prop :=
  ∀ n, (P1214922883937588056.a n : ℤ) = A363597 (n + 1)

end A363597

/-!
# A363598: Expansion of Sum_{k>0} x^(2*k)/(1+x^k)^4.

The programs for A363598, the canonical program `A363598.P10065687439542942200` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363598 has offset 1).

The definition of A363598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363598.P10065687439542942200

`(A002129(n+1)-A138503(n+1))/6`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363598

/-- `(A002129(n+1)-A138503(n+1))/6` -/
def P10065687439542942200.Spec : Prop :=
  ∀ n, P10065687439542942200.a n = (A363598 (n + 1) : ℚ)

end A363598

/-! ## A363598.P12137371803475269337

`A320900(n+1)-A320901(n+1)`
-/

namespace A363598.P12137371803475269337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320900 (n + 1) - A320901 (n + 1)

end

end A363598.P12137371803475269337

namespace A363598

/-- `A320900(n+1)-A320901(n+1)` -/
def P12137371803475269337.Spec : Prop :=
  ∀ n, P12137371803475269337.a n = A363598 (n + 1)

end A363598

/-! ## A363598.P6342938973993730149

`A363022(n+1)-A363617(n+1)`
-/

namespace A363598.P6342938973993730149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363022 (n + 1) - A363617 (n + 1)

end

end A363598.P6342938973993730149

namespace A363598

/-- `A363022(n+1)-A363617(n+1)` -/
def P6342938973993730149.Spec : Prop :=
  ∀ n, P6342938973993730149.a n = A363598 (n + 1)

end A363598

/-! ## A363598.P6543414342899713041

`A002129(n+1)-(A363022(n+1)+A320901(n+1))`
-/

namespace A363598.P6543414342899713041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) - (A363022 (n + 1) + A320901 (n + 1))

end

end A363598.P6543414342899713041

namespace A363598

/-- `A002129(n+1)-(A363022(n+1)+A320901(n+1))` -/
def P6543414342899713041.Spec : Prop :=
  ∀ n, P6543414342899713041.a n = A363598 (n + 1)

end A363598

/-! ## A363598.P15856281224517784536

`A320900(n+1)+A363631(n+1)-A363630(n+1)`
-/

namespace A363598.P15856281224517784536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320900 (n + 1) + (A363631 (n + 1) - A363630 (n + 1))

end

end A363598.P15856281224517784536

namespace A363598

/-- `A320900(n+1)+A363631(n+1)-A363630(n+1)` -/
def P15856281224517784536.Spec : Prop :=
  ∀ n, P15856281224517784536.a n = A363598 (n + 1)

end A363598

/-! ## A363598.P880554695753529303

`A363629(n+1)-(A363630(n+1)+A320901(n+1))`
-/

namespace A363598.P880554695753529303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363629 (n + 1) - (A363630 (n + 1) + A320901 (n + 1))

end

end A363598.P880554695753529303

namespace A363598

/-- `A363629(n+1)-(A363630(n+1)+A320901(n+1))` -/
def P880554695753529303.Spec : Prop :=
  ∀ n, P880554695753529303.a n = A363598 (n + 1)

end A363598

/-! ## A363598.P17850981781294494264

`A363022(n+1)+A363616(n+1)-A363615(n+1)`
-/

namespace A363598.P17850981781294494264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363022 (n + 1) + (A363616 (n + 1) - A363615 (n + 1))

end

end A363598.P17850981781294494264

namespace A363598

/-- `A363022(n+1)+A363616(n+1)-A363615(n+1)` -/
def P17850981781294494264.Spec : Prop :=
  ∀ n, P17850981781294494264.a n = A363598 (n + 1)

end A363598

/-! ## A363598.P14555347787620596795

`A363613(n+1)+A363617(n+1)-A363618(n+1)`
-/

namespace A363598.P14555347787620596795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363613 (n + 1) + (A363617 (n + 1) - A363618 (n + 1))

end

end A363598.P14555347787620596795

namespace A363598

/-- `A363613(n+1)+A363617(n+1)-A363618(n+1)` -/
def P14555347787620596795.Spec : Prop :=
  ∀ n, P14555347787620596795.a n = A363598 (n + 1)

end A363598

