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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A367200: E.g.f. satisfies A(x) = 1/(1 - x*A(x))^(A(x)^3).

The programs for A367200, there is no canonical definition to state claims against.
-/

/-! ## A367200.P4095973048982669436

`A365177(n)-A241470(A006882(n))`
-/

namespace A367200.P4095973048982669436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365177 n - A241470 (A006882 n).toNat

end

end A367200.P4095973048982669436

/-!
# A367201: E.g.f. satisfies log(A(x)) = (exp(x*A(x)) - 1) * A(x)^3.

The programs for A367201, there is no canonical definition to state claims against.
-/

/-! ## A367201.P11068158349048945056

`A189383(A130268(n)+A002620(n))`
-/

namespace A367201.P11068158349048945056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189383 (A130268 n + A002620 n).toNat

end

end A367201.P11068158349048945056

/-!
# A367203: Product of p^(v_p(n)-1) + p^(2*floor(v_p(n)/2)) over all prime divisors p of n with valuation v_p(n).

The programs for A367203, the canonical program `A367203.P9050632869691583128` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367203 has offset 1).

The definition of A367203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367203.P13525939488792641008

`(n+1)*A048250(n+1)*A367197(n+1)/(A000203(n+1)*A007947(n+1))`
-/

namespace A367203.P13525939488792641008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A048250 (n + 1) * A367197 (n + 1) : ℚ) / (A000203 (n + 1) * A007947 (n + 1) : ℚ)

end

end A367203.P13525939488792641008

namespace A367203

/-- `(n+1)*A048250(n+1)*A367197(n+1)/(A000203(n+1)*A007947(n+1))` -/
def P13525939488792641008.Spec : Prop :=
  ∀ n, P13525939488792641008.a n = (A367203 (n + 1) : ℚ)

end A367203

/-! ## A367203.P9050632869691583128

`A000188(n+1)*A001616(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A367203

/-- `A000188(n+1)*A001616(n+1)` -/
def P9050632869691583128.Spec : Prop :=
  ∀ n, P9050632869691583128.a n = A367203 (n + 1)

theorem P9050632869691583128.correct : P9050632869691583128.Spec := by
  intro n
  simp only [A367203, Nat.add_sub_cancel]

end A367203

/-! ## A367203.P1722546687604469874

`∑{d}[n+1, A271102(#)*A367197((n+1)/#)]`
-/

namespace A367203.P1722546687604469874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A367197 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A367203.P1722546687604469874

namespace A367203

/-- `∑{d}[n+1, A271102(#)*A367197((n+1)/#)]` -/
def P1722546687604469874.Spec : Prop :=
  ∀ n, P1722546687604469874.a n = A367203 (n + 1)

end A367203

/-! ## A367203.P15457882886105061946

`(A111248(n+1)+1-A001617(n+1))*A000188(n+1)`
-/

namespace A367203.P15457882886105061946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111248 (n + 1) + (1 - A001617 (n + 1))) * A000188 (n + 1)

end

end A367203.P15457882886105061946

namespace A367203

/-- `(A111248(n+1)+1-A001617(n+1))*A000188(n+1)` -/
def P15457882886105061946.Spec : Prop :=
  ∀ n, P15457882886105061946.a n = A367203 (n + 1)

theorem P15457882886105061946.correct : P15457882886105061946.Spec := by
  intro n
  simp only [A367203, Nat.add_sub_cancel, A367203.P15457882886105061946.a, A367203.P9050632869691583128.a, A000188, A000188.P7486858720566838181.a, A001616, A001616.P911781339430000004.f1, A001616.P911781339430000004.a, A001617, A001617.P10653443517118313610.a, A111248, A111248.P8740398258723781091.a, A000086, A000086.P3359847833353072450.a, A000089, A000089.P6732950680245443794.a, A001615, A001615.P12078511981713404634.a, A008833, A008833.P18388074464065390543.a, A055155, A055155.P11997759877346480704.f1, A055155.P11997759877346480704.a, A271102, A271102.P1341188632352803855.f1, A271102.P1341188632352803855.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A026741, A026741.P7397200255647832146.a, A065959, A065959.P2409166480310075694.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, A000217, A000217.P10269402890581615239.a, A059376, A059376.P12656735072516275082.f1, A059376.P12656735072516275082.a, A059479, A059479.P17464652159649958448.a, A069091, A069091.P1979038829960387113.f1, A069091.P1979038829960387113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A367203

/-! ## A367203.P7365710662661990328

`∑{d}[A007947(n+1), A000188((n+1)/#)]*A000188(n+1)`
-/

namespace A367203.P7365710662661990328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, A000188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * A000188 (n + 1)

end

end A367203.P7365710662661990328

namespace A367203

/-- `∑{d}[A007947(n+1), A000188((n+1)/#)]*A000188(n+1)` -/
def P7365710662661990328.Spec : Prop :=
  ∀ n, P7365710662661990328.a n = A367203 (n + 1)

end A367203

/-! ## A367203.P15924847064476839313

`A001616((n+1)*A008833(n+1))`
-/

namespace A367203.P15924847064476839313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 ((n + 1 : ℤ) * A008833 (n + 1)).toNat

end

end A367203.P15924847064476839313

namespace A367203

/-- `A001616((n+1)*A008833(n+1))` -/
def P15924847064476839313.Spec : Prop :=
  ∀ n, P15924847064476839313.a n = A367203 (n + 1)

end A367203

/-!
# A367204: Number of diagonals in a regular n-gon that are parallel to an edge.

The programs for A367204, the canonical program `A367204.P5287494782937733080` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367204 has offset 3).

The definition of A367204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367204.P5287494782937733080

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=3, a(4)=14, a(5)=8`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367204

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P5287494782937733080.Spec : Prop :=
  ∀ n, P5287494782937733080.a n = A367204 (n + 3)

theorem P5287494782937733080.correct : P5287494782937733080.Spec := by
  intro n
  simp only [A367204, Nat.add_sub_cancel]

end A367204

/-! ## A367204.P3287799388877191356

`(lcm(n+1, n+3)-(n+3))/2`
-/

namespace A367204.P3287799388877191356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (n + 1) (n + 3) : ℤ) - (n + 3 : ℤ) : ℚ) / 2

end

end A367204.P3287799388877191356

namespace A367204

/-- `(lcm(n+1, n+3)-(n+3))/2` -/
def P3287799388877191356.Spec : Prop :=
  ∀ n, P3287799388877191356.a n = (A367204 (n + 3) : ℚ)

end A367204

/-! ## A367204.P14704756213763669105

`(a(n-2)+1)*(n+3)/(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A367204.P14704756213763669105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (a (n - 2) + 1) * ((n + 3 : ℚ) / ((n : ℤ) - 1 : ℚ))

end

end A367204.P14704756213763669105

namespace A367204

/-- `(a(n-2)+1)*(n+3)/(n-1)` -/
def P14704756213763669105.Spec : Prop :=
  ∀ n, P14704756213763669105.a n = (A367204 (n + 3) : ℚ)

end A367204

/-! ## A367204.P18294116120124583925

`A390802(n+1)-1`
-/

namespace A367204.P18294116120124583925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390802 (n + 1) - 1

end

end A367204.P18294116120124583925

namespace A367204

/-- `A390802(n+1)-1` -/
def P18294116120124583925.Spec : Prop :=
  ∀ n, P18294116120124583925.a n = A367204 (n + 3)

end A367204

/-! ## A367204.P1120528819829146860

`A210982(n)-A308422(n)`
-/

namespace A367204.P1120528819829146860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210982 n - A308422 n

end

end A367204.P1120528819829146860

namespace A367204

/-- `A210982(n)-A308422(n)` -/
def P1120528819829146860.Spec : Prop :=
  ∀ n, P1120528819829146860.a n = A367204 (n + 3)

end A367204

/-! ## A367204.P816504990126303557

`A184005(n+1)-A241496(n)`
-/

namespace A367204.P816504990126303557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184005 (n + 1) - A241496 n

end

end A367204.P816504990126303557

namespace A367204

/-- `A184005(n+1)-A241496(n)` -/
def P816504990126303557.Spec : Prop :=
  ∀ n, P816504990126303557.a n = A367204 (n + 3)

end A367204

/-! ## A367204.P16213632116923293377

`A359329(n+3)/A000034(n)`
-/

namespace A367204.P16213632116923293377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359329 (n + 3) : ℚ) / (A000034 n : ℚ)

end

end A367204.P16213632116923293377

namespace A367204

/-- `A359329(n+3)/A000034(n)` -/
def P16213632116923293377.Spec : Prop :=
  ∀ n, P16213632116923293377.a n = (A367204 (n + 3) : ℚ)

end A367204

/-! ## A367204.P14493801065032490023

`A359329(n+3)/A084642(n)`
-/

namespace A367204.P14493801065032490023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359329 (n + 3) : ℚ) / (A084642 n : ℚ)

end

end A367204.P14493801065032490023

namespace A367204

/-- `A359329(n+3)/A084642(n)` -/
def P14493801065032490023.Spec : Prop :=
  ∀ n, P14493801065032490023.a n = (A367204 (n + 3) : ℚ)

end A367204

/-! ## A367204.P15917112923936933633

`A000096(n)%A056136(n+1)`
-/

namespace A367204.P15917112923936933633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 n) (A056136 (n + 1))

end

end A367204.P15917112923936933633

namespace A367204

/-- `A000096(n)%A056136(n+1)` -/
def P15917112923936933633.Spec : Prop :=
  ∀ n, P15917112923936933633.a n = A367204 (n + 3)

end A367204

/-! ## A367204.P1686510481289442926

`A085740(n)%A070260(n+1)`
-/

namespace A367204.P1686510481289442926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085740 n) (A070260 (n + 1))

end

end A367204.P1686510481289442926

namespace A367204

/-- `A085740(n)%A070260(n+1)` -/
def P1686510481289442926.Spec : Prop :=
  ∀ n, P1686510481289442926.a n = A367204 (n + 3)

end A367204

/-! ## A367204.P16664339121272469579

`A266287(n)%A013945(n+1)`
-/

namespace A367204.P16664339121272469579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266287 n) (A013945 (n + 1))

end

end A367204.P16664339121272469579

namespace A367204

/-- `A266287(n)%A013945(n+1)` -/
def P16664339121272469579.Spec : Prop :=
  ∀ n, P16664339121272469579.a n = A367204 (n + 3)

end A367204

/-! ## A367204.P17398833552681429371

`A168566(n+1)%A265225(n)`
-/

namespace A367204.P17398833552681429371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168566 (n + 1)) (A265225 n)

end

end A367204.P17398833552681429371

namespace A367204

/-- `A168566(n+1)%A265225(n)` -/
def P17398833552681429371.Spec : Prop :=
  ∀ n, P17398833552681429371.a n = A367204 (n + 3)

end A367204

/-! ## A367204.P13460658020076683122

`gcd(A085740(n), A359329(n+3))`
-/

namespace A367204.P13460658020076683122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085740 n) (A359329 (n + 3))

end

end A367204.P13460658020076683122

namespace A367204

/-- `gcd(A085740(n), A359329(n+3))` -/
def P13460658020076683122.Spec : Prop :=
  ∀ n, (P13460658020076683122.a n : ℤ) = A367204 (n + 3)

end A367204

/-! ## A367204.P2776784306189933806

`A056136(n+1)-A133622(n+1)`
-/

namespace A367204.P2776784306189933806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056136 (n + 1) - A133622 (n + 1)

end

end A367204.P2776784306189933806

namespace A367204

/-- `A056136(n+1)-A133622(n+1)` -/
def P2776784306189933806.Spec : Prop :=
  ∀ n, P2776784306189933806.a n = A367204 (n + 3)

end A367204

/-! ## A367204.P3973413906264751525

`A093005(n+1)/A000034(n)-1`
-/

namespace A367204.P3973413906264751525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093005 (n + 1) : ℚ) / (A000034 n : ℚ) - 1

end

end A367204.P3973413906264751525

namespace A367204

/-- `A093005(n+1)/A000034(n)-1` -/
def P3973413906264751525.Spec : Prop :=
  ∀ n, P3973413906264751525.a n = (A367204 (n + 3) : ℚ)

end A367204

/-! ## A367204.P7039756725909598510

`A003777(n+1)%A390802(n+1)`
-/

namespace A367204.P7039756725909598510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003777 (n + 1)) (A390802 (n + 1))

end

end A367204.P7039756725909598510

namespace A367204

/-- `A003777(n+1)%A390802(n+1)` -/
def P7039756725909598510.Spec : Prop :=
  ∀ n, P7039756725909598510.a n = A367204 (n + 3)

end A367204

/-! ## A367204.P14536650856117056921

`A105638(n+3)%A227168(n+1)`
-/

namespace A367204.P14536650856117056921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105638 (n + 3)) (A227168 (n + 1))

end

end A367204.P14536650856117056921

namespace A367204

/-- `A105638(n+3)%A227168(n+1)` -/
def P14536650856117056921.Spec : Prop :=
  ∀ n, P14536650856117056921.a n = A367204 (n + 3)

end A367204

/-! ## A367204.P14779547660895191518

`A347553(n+3)%A056136(n+1)`
-/

namespace A367204.P14779547660895191518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347553 (n + 3)) (A056136 (n + 1))

end

end A367204.P14779547660895191518

namespace A367204

/-- `A347553(n+3)%A056136(n+1)` -/
def P14779547660895191518.Spec : Prop :=
  ∀ n, P14779547660895191518.a n = A367204 (n + 3)

end A367204

/-! ## A367204.P3106773754893840603

`A359366(n+2)-(n+3)`
-/

namespace A367204.P3106773754893840603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359366 (n + 2) - (n + 3 : ℤ)

end

end A367204.P3106773754893840603

namespace A367204

/-- `A359366(n+2)-(n+3)` -/
def P3106773754893840603.Spec : Prop :=
  ∀ n, P3106773754893840603.a n = A367204 (n + 3)

end A367204

/-! ## A367204.P11138121291670734999

`A056136(n+1)-A152271(n+2)`
-/

namespace A367204.P11138121291670734999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056136 (n + 1) - A152271 (n + 2)

end

end A367204.P11138121291670734999

namespace A367204

/-- `A056136(n+1)-A152271(n+2)` -/
def P11138121291670734999.Spec : Prop :=
  ∀ n, P11138121291670734999.a n = A367204 (n + 3)

end A367204

/-!
# A367205: Number of nonnegative sequences of integers S with the properties that (1) sum(S) + length(S) = n and (2) there exists a nonnegative sequence whose Euler transform begins with S starting at index 1.

The programs for A367205, there is no canonical definition to state claims against.
-/

/-! ## A367205.P2604697507802462086

`A192416(A169986(n))`
-/

namespace A367205.P2604697507802462086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192416 (A169986 n).toNat

end

end A367205.P2604697507802462086

/-! ## A367205.P8057486223624592824

`A100617(A094255(n+1))`
-/

namespace A367205.P8057486223624592824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A094255 (n + 1)).toNat

end

end A367205.P8057486223624592824

/-! ## A367205.P17289450156247839260

`A338466(A118033(n+1))`
-/

namespace A367205.P17289450156247839260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A118033 (n + 1)).toNat

end

end A367205.P17289450156247839260

/-! ## A367205.P5519672283054977323

`A379604(A116748(n+1))`
-/

namespace A367205.P5519672283054977323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379604 (A116748 (n + 1)).toNat

end

end A367205.P5519672283054977323

/-! ## A367205.P7682813406106739761

`A350349(A302019(n+1))`
-/

namespace A367205.P7682813406106739761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350349 (A302019 (n + 1)).toNat

end

end A367205.P7682813406106739761

/-!
# A367211: Triangular array read by rows: T(n, k) = binomial(n, k) * A000129(n - k) for 0 <= k < n.

The programs for A367211, the canonical program `A367211.P16132309912826063694` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367211 has offset 1).

The definition of A367211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367211.P16132309912826063694

`A074909(n)*A128514(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A367211

/-- `A074909(n)*A128514(n+1)` -/
def P16132309912826063694.Spec : Prop :=
  ∀ n, P16132309912826063694.a n = A367211 (n + 1)

theorem P16132309912826063694.correct : P16132309912826063694.Spec := by
  intro n
  simp only [A367211, Nat.add_sub_cancel]

end A367211

/-!
# A367212: Number of integer partitions of n whose length (number of parts) is equal to the sum of some submultiset.

The programs for A367212, there is no canonical definition to state claims against.
-/

/-! ## A367212.P4948403427969778830

`A000041(n)-A367213(n)`
-/

namespace A367212.P4948403427969778830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A367213 n

end

end A367212.P4948403427969778830

/-! ## A367212.P17985336111820657363

`A213598(n)-A367213(n)`
-/

namespace A367212.P17985336111820657363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A367213 n

end

end A367212.P17985336111820657363

/-! ## A367212.P592074826672534500

`∑[A002865(n)]-A367213(n)`
-/

namespace A367212.P592074826672534500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367213 n

end

end A367212.P592074826672534500

/-! ## A367212.P8603978816023046915

`A035363(2*n)-A367213(n)`
-/

namespace A367212.P8603978816023046915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A367213 n

end

end A367212.P8603978816023046915

/-! ## A367212.P12829484519097348881

`A133041(n)-(A367213(n)+n)`
-/

namespace A367212.P12829484519097348881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A367213 n + (n : ℤ))

end

end A367212.P12829484519097348881

/-!
# A367213: Number of integer partitions of n whose length (number of parts) is not equal to the sum of any submultiset.

The programs for A367213, there is no canonical definition to state claims against.
-/

/-! ## A367213.P12238825172652305156

`A000041(n)-A367212(n)`
-/

namespace A367213.P12238825172652305156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A367212 n

end

end A367213.P12238825172652305156

/-! ## A367213.P12885539818528165343

`A213598(n)-A367212(n)`
-/

namespace A367213.P12885539818528165343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A367212 n

end

end A367213.P12885539818528165343

/-! ## A367213.P6547881618606924924

`∑[A002865(n)]-A367212(n)`
-/

namespace A367213.P6547881618606924924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367212 n

end

end A367213.P6547881618606924924

/-! ## A367213.P9088488035376987389

`A035363(2*n)-A367212(n)`
-/

namespace A367213.P9088488035376987389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A367212 n

end

end A367213.P9088488035376987389

/-! ## A367213.P435223000646953418

`A183568(A000217(n))-A367212(n)`
-/

namespace A367213.P435223000646953418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A000217 n).toNat - A367212 n

end

end A367213.P435223000646953418

/-!
# A367214: Number of strict integer partitions of n whose length (number of parts) is equal to the sum of some submultiset.

The programs for A367214, there is no canonical definition to state claims against.
-/

/-! ## A367214.P10221732816967140868

`A000009(n)-A367215(n)`
-/

namespace A367214.P10221732816967140868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A367215 n

end

end A367214.P10221732816967140868

/-! ## A367214.P946221574589596457

`abs(A081360(n))-A367215(n)`
-/

namespace A367214.P946221574589596457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A367215 n

end

end A367214.P946221574589596457

/-! ## A367214.P3460493023074774541

`∑[A087897(n)]-A367215(n)`
-/

namespace A367214.P3460493023074774541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367215 n

end

end A367214.P3460493023074774541

/-! ## A367214.P6034057541536529387

`A111133(n)+1-A367215(n)`
-/

namespace A367214.P6034057541536529387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1 - A367215 n

end

end A367214.P6034057541536529387

/-! ## A367214.P6300799408811811885

`A096765(n)+A025147(n)-A367215(n)`
-/

namespace A367214.P6300799408811811885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n + A025147 n - A367215 n

end

end A367214.P6300799408811811885

/-! ## A367214.P17871310555558577922

`A067661(n)+A067659(n)-A367215(n)`
-/

namespace A367214.P17871310555558577922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n + A067659 n - A367215 n

end

end A367214.P17871310555558577922

/-! ## A367214.P12992983373693120507

`A331848(n)+A000700(n)-A367215(n)`
-/

namespace A367214.P12992983373693120507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331848 n + A000700 n - A367215 n

end

end A367214.P12992983373693120507

/-! ## A367214.P8143568155536633392

`A240855(n)+A240861(n)-A367215(n)`
-/

namespace A367214.P8143568155536633392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240855 n + (A240861 n - A367215 n)

end

end A367214.P8143568155536633392

/-! ## A367214.P6584452984929977964

`2*A067661(n)-A010815(n)-A367215(n)`
-/

namespace A367214.P6584452984929977964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067661 n - A010815 n - A367215 n

end

end A367214.P6584452984929977964

/-! ## A367214.P5228203487460035251

`A363226(n)+A364346(n)-A367215(n)`
-/

namespace A367214.P5228203487460035251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363226 n + (A364346 n - A367215 n)

end

end A367214.P5228203487460035251

/-!
# A367215: Number of strict integer partitions of n whose length (number of parts) is not equal to the sum of any subset.

The programs for A367215, there is no canonical definition to state claims against.
-/

/-! ## A367215.P11946394017585245255

`A000009(n)-A367214(n)`
-/

namespace A367215.P11946394017585245255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A367214 n

end

end A367215.P11946394017585245255

/-! ## A367215.P14015125369083327088

`∑[A087897(n)]-A367214(n)`
-/

namespace A367215.P14015125369083327088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367214 n

end

end A367215.P14015125369083327088

/-! ## A367215.P185378330995032916

`A096765(n)+A025147(n)-A367214(n)`
-/

namespace A367215.P185378330995032916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n + A025147 n - A367214 n

end

end A367215.P185378330995032916

/-! ## A367215.P1865237438590388326

`A331848(n)+A000700(n)-A367214(n)`
-/

namespace A367215.P1865237438590388326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331848 n + A000700 n - A367214 n

end

end A367215.P1865237438590388326

/-! ## A367215.P5189296129052369948

`A240855(n)+A240861(n)-A367214(n)`
-/

namespace A367215.P5189296129052369948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240855 n + (A240861 n - A367214 n)

end

end A367215.P5189296129052369948

/-! ## A367215.P15554889010013772005

`A364272(n)+A364349(n)-A367214(n)`
-/

namespace A367215.P15554889010013772005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364272 n + (A364349 n - A367214 n)

end

end A367215.P15554889010013772005

/-! ## A367215.P5786164945679113941

`2*A067661(n)-A010815(n)-A367214(n)`
-/

namespace A367215.P5786164945679113941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067661 n - A010815 n - A367214 n

end

end A367215.P5786164945679113941

/-!
# A367216: Number of subsets of {1..n} whose cardinality is equal to the sum of some subset.

The programs for A367216, there is no canonical definition to state claims against.
-/

/-! ## A367216.P16040883541788258011

`2^n-A367217(n)`
-/

namespace A367216.P16040883541788258011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A367217 n

end

end A367216.P16040883541788258011

/-! ## A367216.P5394051837813637316

`abs(A000079(n)-A367217(n))`
-/

namespace A367216.P5394051837813637316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A367217 n|

end

end A367216.P5394051837813637316

/-! ## A367216.P96858527559505604

`A000051(n)-(A367217(n)+1)`
-/

namespace A367216.P96858527559505604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A367217 n + 1)

end

end A367216.P96858527559505604

/-! ## A367216.P7153858757355452132

`A000225(n)+1-A367217(n)`
-/

namespace A367216.P7153858757355452132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A367217 n)

end

end A367216.P7153858757355452132

/-! ## A367216.P17090273378190448708

`A000918(n)-A367217(n)+2`
-/

namespace A367216.P17090273378190448708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n - A367217 n + 2

end

end A367216.P17090273378190448708

/-!
# A367217: Number of subsets of {1..n} whose cardinality is not equal to the sum of any subset.

The programs for A367217, there is no canonical definition to state claims against.
-/

/-! ## A367217.P384769601830476545

`2^n-A367216(n)`
-/

namespace A367217.P384769601830476545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A367216 n

end

end A367217.P384769601830476545

/-! ## A367217.P13822792797909485927

`A000079(n)%A367216(n)`
-/

namespace A367217.P13822792797909485927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A367216 n)

end

end A367217.P13822792797909485927

/-! ## A367217.P12544897941017928612

`A155559(n)%A367216(n)`
-/

namespace A367217.P12544897941017928612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155559 n) (A367216 n)

end

end A367217.P12544897941017928612

/-! ## A367217.P7256786253194289682

`A171449(n)%A367216(n)`
-/

namespace A367217.P7256786253194289682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171449 n) (A367216 n)

end

end A367217.P7256786253194289682

/-! ## A367217.P14002159575369700692

`A171559(n)%A367216(n)`
-/

namespace A367217.P14002159575369700692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171559 n) (A367216 n)

end

end A367217.P14002159575369700692

/-!
# A367218: Number of integer partitions of n whose length can be written as a nonnegative linear combination of the distinct parts.

The programs for A367218, there is no canonical definition to state claims against.
-/

/-! ## A367218.P4827554136644259944

`A000041(n)-A367219(n)`
-/

namespace A367218.P4827554136644259944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A367219 n

end

end A367218.P4827554136644259944

/-! ## A367218.P3176997937728992821

`A213598(n)-A367219(n)`
-/

namespace A367218.P3176997937728992821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A367219 n

end

end A367218.P3176997937728992821

/-! ## A367218.P2641342133731511330

`sqrt(A001255(n))-A367219(n)`
-/

namespace A367218.P2641342133731511330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A367219 n : ℝ)

end

end A367218.P2641342133731511330

/-! ## A367218.P14133839019329521147

`∑[A002865(n)]-A367219(n)`
-/

namespace A367218.P14133839019329521147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367219 n

end

end A367218.P14133839019329521147

/-! ## A367218.P3976383459087721060

`A000065(n)+1-A367219(n)`
-/

namespace A367218.P3976383459087721060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A367219 n)

end

end A367218.P3976383459087721060

/-!
# A367219: Number of integer partitions of n whose length cannot be written as a nonnegative linear combination of the distinct parts.

The programs for A367219, there is no canonical definition to state claims against.
-/

/-! ## A367219.P5373508540000706032

`A000041(n)-A367218(n)`
-/

namespace A367219.P5373508540000706032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A367218 n

end

end A367219.P5373508540000706032

/-! ## A367219.P18225108828177651485

`A213598(n)-A367218(n)`
-/

namespace A367219.P18225108828177651485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A367218 n

end

end A367219.P18225108828177651485

/-! ## A367219.P3052660585648912751

`∑[A002865(n)]-A367218(n)`
-/

namespace A367219.P3052660585648912751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367218 n

end

end A367219.P3052660585648912751

/-! ## A367219.P1024133097019601187

`A008284(A001844(n))-A367218(n)`
-/

namespace A367219.P1024133097019601187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A001844 n).toNat - A367218 n

end

end A367219.P1024133097019601187

/-!
# A367220: Number of strict integer partitions of n whose length (number of parts) can be written as a nonnegative linear combination of the parts.

The programs for A367220, there is no canonical definition to state claims against.
-/

/-! ## A367220.P3113813908355987793

`A000009(n)-A367221(n)`
-/

namespace A367220.P3113813908355987793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A367221 n

end

end A367220.P3113813908355987793

/-! ## A367220.P10277029954497858636

`abs(A081360(n))-A367221(n)`
-/

namespace A367220.P10277029954497858636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A367221 n

end

end A367220.P10277029954497858636

/-! ## A367220.P16285275099974527127

`∑[A087897(n)]-A367221(n)`
-/

namespace A367220.P16285275099974527127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367221 n

end

end A367220.P16285275099974527127

/-! ## A367220.P12623048407316404873

`A111133(n)+1-A367221(n)`
-/

namespace A367220.P12623048407316404873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A367221 n)

end

end A367220.P12623048407316404873

/-! ## A367220.P375089859809298600

`A364916(A000217(n))-A367221(n)`
-/

namespace A367220.P375089859809298600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A000217 n).toNat - A367221 n

end

end A367220.P375089859809298600

/-! ## A367220.P10706383888011600639

`A240855(n)+A240861(n)-A367221(n)`
-/

namespace A367220.P10706383888011600639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240855 n + (A240861 n - A367221 n)

end

end A367220.P10706383888011600639

/-! ## A367220.P2834003626931577459

`A363226(n)+A364346(n)-A367221(n)`
-/

namespace A367220.P2834003626931577459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363226 n + (A364346 n - A367221 n)

end

end A367220.P2834003626931577459

/-!
# A367221: Number of strict integer partitions of n whose length (number of parts) cannot be written as a nonnegative linear combination of the parts.

The programs for A367221, there is no canonical definition to state claims against.
-/

/-! ## A367221.P470955316564136194

`A000009(n)-A367220(n)`
-/

namespace A367221.P470955316564136194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A367220 n

end

end A367221.P470955316564136194

/-! ## A367221.P5290544609123963227

`∑[A087897(n)]-A367220(n)`
-/

namespace A367221.P5290544609123963227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367220 n

end

end A367221.P5290544609123963227

/-! ## A367221.P3185201207217474324

`A111133(n)+1-A367220(n)`
-/

namespace A367221.P3185201207217474324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A367220 n)

end

end A367221.P3185201207217474324

/-! ## A367221.P12046071891898224091

`A346520(∑[n]+n)-A367220(n)`
-/

namespace A367221.P12046071891898224091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A367220 n

end

end A367221.P12046071891898224091

/-! ## A367221.P14775993191914743133

`A240855(n)+A240861(n)-A367220(n)`
-/

namespace A367221.P14775993191914743133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240855 n + (A240861 n - A367220 n)

end

end A367221.P14775993191914743133

/-! ## A367221.P9761419790721791306

`A367214(n)+A367215(n)-A367220(n)`
-/

namespace A367221.P9761419790721791306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367214 n + (A367215 n - A367220 n)

end

end A367221.P9761419790721791306

/-! ## A367221.P4374766431298911604

`lcm(A020985(n), A081360(n))-A367220(n)`
-/

namespace A367221.P4374766431298911604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020985 n) (A081360 n) : ℤ) - A367220 n

end

end A367221.P4374766431298911604

/-!
# A367222: Number of subsets of {1..n} whose cardinality can be written as a nonnegative linear combination of the elements.

The programs for A367222, there is no canonical definition to state claims against.
-/

/-! ## A367222.P12894721861184456902

`2^n-A367223(n)`
-/

namespace A367222.P12894721861184456902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A367223 n

end

end A367222.P12894721861184456902

/-! ## A367222.P9121027063886013159

`abs(A000079(n)-A367223(n))`
-/

namespace A367222.P9121027063886013159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A367223 n|

end

end A367222.P9121027063886013159

/-! ## A367222.P10350354765740607344

`A000051(n)-(A367223(n)+1)`
-/

namespace A367222.P10350354765740607344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A367223 n + 1)

end

end A367222.P10350354765740607344

/-! ## A367222.P685440577287001145

`A000225(n)-A367223(n)+1`
-/

namespace A367222.P685440577287001145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A367223 n + 1

end

end A367222.P685440577287001145

/-! ## A367222.P9196499828076698199

`A085489(n)+A088809(n)-A367223(n)`
-/

namespace A367222.P9196499828076698199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n + (A088809 n - A367223 n)

end

end A367222.P9196499828076698199

/-!
# A367223: Number of subsets of {1..n} whose cardinality cannot be written as a nonnegative linear combination of the elements.

The programs for A367223, there is no canonical definition to state claims against.
-/

/-! ## A367223.P5413972676157709811

`2^n-A367222(n)`
-/

namespace A367223.P5413972676157709811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A367222 n

end

end A367223.P5413972676157709811

/-! ## A367223.P5306324143852431363

`A000079(n)%A367222(n)`
-/

namespace A367223.P5306324143852431363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A367222 n)

end

end A367223.P5306324143852431363

/-! ## A367223.P11144384456588687749

`A155559(n)%A367222(n)`
-/

namespace A367223.P11144384456588687749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155559 n) (A367222 n)

end

end A367223.P11144384456588687749

/-! ## A367223.P10516602170697238363

`A171449(n)%A367222(n)`
-/

namespace A367223.P10516602170697238363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171449 n) (A367222 n)

end

end A367223.P10516602170697238363

/-! ## A367223.P3629031871120660969

`A171559(n)%A367222(n)`
-/

namespace A367223.P3629031871120660969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171559 n) (A367222 n)

end

end A367223.P3629031871120660969

/-!
# A367225: Numbers m without a divisor whose prime indices sum to bigomega(m).

The programs for A367225, there is no canonical definition to state claims against.
-/

/-! ## A367225.P15835052372466268003

`comp[A367224(n+1)-1]+1`
-/

namespace A367225.P15835052372466268003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367224 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A367225.P15835052372466268003

/-! ## A367225.P376290489019037095

`lt[A089844(A033630(2*n)), A333627(2*n)]`
-/

namespace A367225.P376290489019037095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089844 (A033630 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367225.P376290489019037095

/-! ## A367225.P1409580015819584299

`A325798(A337050(n+1)^A115576(3*n+1))`
-/

namespace A367225.P1409580015819584299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325798 (SequenceMachineLib.roundAway ((A337050 (n + 1) : ℚ) ^ (A115576 (3 * n + 1) : ℤ))).toNat

end

end A367225.P1409580015819584299

/-! ## A367225.P2640074829941791717

`A033948(lt[A053222(n+1), A128562(3*(n+1))])`
-/

namespace A367225.P2640074829941791717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128562 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A367225.P2640074829941791717

/-! ## A367225.P1095741169239699078

`A120749(n+1)+A000035(A277929(n))`
-/

namespace A367225.P1095741169239699078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120749 (n + 1) + A000035 (A277929 n).toNat

end

end A367225.P1095741169239699078

/-!
# A367226: Numbers m whose prime indices have a nonnegative linear combination equal to bigomega(m).

The programs for A367226, there is no canonical definition to state claims against.
-/

/-! ## A367226.P12185356929335721609

`comp[A367227(n+1)-1]+1`
-/

namespace A367226.P12185356929335721609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367227 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A367226.P12185356929335721609

/-! ## A367226.P6396343118081621624

`∪[A004277(n), A367224(n+1)]`
-/

namespace A367226.P6396343118081621624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367226.P6396343118081621624

/-! ## A367226.P5726238392109002391

`∪[A020739(n), A367224(n+1)]`
-/

namespace A367226.P5726238392109002391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367226.P5726238392109002391

/-! ## A367226.P13656279375063439915

`∪[A020744(n), A367224(n+1)]`
-/

namespace A367226.P13656279375063439915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367226.P13656279375063439915

/-! ## A367226.P14300055157706508924

`∪[A103517(n), A367224(n+1)]`
-/

namespace A367226.P14300055157706508924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367226.P14300055157706508924

/-! ## A367226.P845414121890616143

`∪[A047235(n+1), A367224(n+1)]`
-/

namespace A367226.P845414121890616143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367226.P845414121890616143

/-! ## A367226.P8536393819584407099

`∪[A054741(n+1), A367224(n+1)]`
-/

namespace A367226.P8536393819584407099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367226.P8536393819584407099

/-! ## A367226.P13583214692399306603

`∪[A067315(n+1), A367224(n+1)]`
-/

namespace A367226.P13583214692399306603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367226.P13583214692399306603

/-! ## A367226.P9888089751273603646

`∪[A096851(n+1), A367224(n+1)]`
-/

namespace A367226.P9888089751273603646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367226.P9888089751273603646

/-!
# A367227: Numbers m whose prime indices have no nonnegative linear combination equal to bigomega(m).

The programs for A367227, there is no canonical definition to state claims against.
-/

/-! ## A367227.P14596368804719160570

`∩[2*n+1, A367225(n+1)]`
-/

namespace A367227.P14596368804719160570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367227.P14596368804719160570

/-! ## A367227.P13383022081216125384

`record[A000265(A367225(n+1))]`
-/

namespace A367227.P13383022081216125384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A367225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367227.P13383022081216125384

/-! ## A367227.P5248425012840015479

`filter[A367225(n+1), A000035(#)]`
-/

namespace A367227.P5248425012840015479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A367227.P5248425012840015479

/-! ## A367227.P8158789843788930161

`filter[A367225(n+1), A093719(#)]`
-/

namespace A367227.P8158789843788930161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A367227.P8158789843788930161

/-! ## A367227.P12293268279850844906

`filter[A367225(n+1), A260390(#)]`
-/

namespace A367227.P12293268279850844906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A367227.P12293268279850844906

/-!
# A367228: Products of two consecutive Fermat numbers: a(n) = A000215(n) * A000215(n+1).

The programs for A367228, the canonical program `A367228.P9618108767106141899` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367228 has offset 0).

The definition of A367228 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000215(n)*A000215(n+1)` (program `A367228.P9618108767106141899`, by `A367228.P9618108767106141899.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A367228.P9775503093679754741

`(2^2^n+1)*(2^2^(n+1)+1)`
-/

namespace A367228.P9775503093679754741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ 2 ^ n + 1) * (2 ^ 2 ^ (n + 1) + 1)

end

end A367228.P9775503093679754741

namespace A367228

/-- `(2^2^n+1)*(2^2^(n+1)+1)` -/
def P9775503093679754741.Spec : Prop :=
  ∀ n, (P9775503093679754741.a n : ℤ) = A367228 n

theorem P9775503093679754741.correct : P9775503093679754741.Spec := by
  intro n
  simp only [A367228, Nat.add_sub_cancel, A367228.P9775503093679754741.a, A367228.P9618108767106141899.a, A000215, A000215.P17006250026428793045.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A367228

/-! ## A367228.P9618108767106141899

`A000215(n)*A000215(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A367228

/-- `A000215(n)*A000215(n+1)` -/
def P9618108767106141899.Spec : Prop :=
  ∀ n, P9618108767106141899.a n = A367228 n

theorem P9618108767106141899.correct : P9618108767106141899.Spec := by
  intro n
  simp only [A367228]

end A367228

/-! ## A367228.P14438446094766076730

`A034496(2^n)`
-/

namespace A367228.P14438446094766076730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034496 (2 ^ n)

end

end A367228.P14438446094766076730

namespace A367228

/-- `A034496(2^n)` -/
def P14438446094766076730.Spec : Prop :=
  ∀ n, P14438446094766076730.a n = A367228 n

end A367228

/-!
# A367230: Base-2 Fermat pseudoprimes k such that the multiplicative order of 2 modulo k is odd.

The programs for A367230, there is no canonical definition to state claims against.
-/

/-! ## A367230.P1347601786363254228

`A001262(eq[xor(n, n+1)%3, A033106(n+2)])`
-/

namespace A367230.P1347601786363254228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A367230.P1347601786363254228

/-!
# A367231: Carmichael numbers k such that the multiplicative order of 2 modulo k is odd.

The programs for A367231, there is no canonical definition to state claims against.
-/

/-! ## A367231.P5690619626182765801

`∩[A063847(n+1), A367230(n+1)]`
-/

namespace A367231.P5690619626182765801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367231.P5690619626182765801

/-! ## A367231.P5935246914011492742

`∩[A340092(n+1), A367230(n+1)]`
-/

namespace A367231.P5935246914011492742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367231.P5935246914011492742

/-!
# A367232: G.f. satisfies A(x) = 1 + x*A(x)^3 / (1 - x*A(x))^2.

The programs for A367232, there is no canonical definition to state claims against.
-/

/-! ## A367232.P17197247072765420951

`A106250(2*A213282(n))`
-/

namespace A367232.P17197247072765420951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106250 (2 * A213282 n).toNat

end

end A367232.P17197247072765420951

/-! ## A367232.P12438610893182862777

`A367651(A325768(2*n²))`
-/

namespace A367232.P12438610893182862777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367651 (A325768 (2 * n ^ 2)).toNat

end

end A367232.P12438610893182862777

/-!
# A367233: G.f. satisfies A(x) = 1 + x*A(x)^3 / (1 - x*A(x))^3.

The programs for A367233, there is no canonical definition to state claims against.
-/

/-! ## A367233.P6319188808533074642

`n*A367225(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A367233.P6319188808533074642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A367225 (a (n - 1)).toNat

end

end A367233.P6319188808533074642

/-!
# A367234: G.f. satisfies A(x) = 1 + x*A(x)^2 / (1 - x*A(x))^4.

The programs for A367234, there is no canonical definition to state claims against.
-/

/-! ## A367234.P11295329444134916598

`∑[A337649(or(n, a(n-1)))]` with `a(0)=1, a(1)=0`
-/

namespace A367234.P11295329444134916598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A337649 (Int.lor (n : ℤ) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367234.P11295329444134916598

/-!
# A367235: G.f. satisfies A(x) = 1 + x*A(x)^3 / (1 - x*A(x))^4.

The programs for A367235, there is no canonical definition to state claims against.
-/

/-! ## A367235.P1799656199386763364

`A365624(A001147(n))-A079318(n)`
-/

namespace A367235.P1799656199386763364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365624 (A001147 n).toNat - A079318 n

end

end A367235.P1799656199386763364

/-! ## A367235.P16642903104284502402

`A365624(A001147(n))-A320387(n)`
-/

namespace A367235.P16642903104284502402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365624 (A001147 n).toNat - A320387 n

end

end A367235.P16642903104284502402

/-!
# A367236: G.f. satisfies A(x) = 1 + x / (1 - x*A(x)^2)^2.

The programs for A367236, there is no canonical definition to state claims against.
-/

/-! ## A367236.P2863079992175213085

`A097992(A151061(n))`
-/

namespace A367236.P2863079992175213085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A151061 n).toNat

end

end A367236.P2863079992175213085

/-! ## A367236.P4540203429411830289

`A385236(n^n+1)`
-/

namespace A367236.P4540203429411830289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385236 (n ^ n + 1)

end

end A367236.P4540203429411830289

/-!
# A367237: G.f. satisfies A(x) = 1 + x*A(x)^2 / (1 - x*A(x)^2)^2.

The programs for A367237, there is no canonical definition to state claims against.
-/

/-! ## A367237.P2582304502522183868

`A357454(∑[∑[A066096(n)]])`
-/

namespace A367237.P2582304502522183868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357454 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A367237.P2582304502522183868

/-! ## A367237.P14845624773718914735

`A057357(A373312(n+1)+2)`
-/

namespace A367237.P14845624773718914735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (A373312 (n + 1) + 2).toNat

end

end A367237.P14845624773718914735

/-!
# A367238: G.f. satisfies A(x) = 1 + x*A(x)^3 / (1 - x*A(x)^2)^2.

The programs for A367238, there is no canonical definition to state claims against.
-/

/-! ## A367238.P7229226998286531883

`A287899(n)+A073312(A002110(n))`
-/

namespace A367238.P7229226998286531883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287899 n + A073312 (A002110 n).toNat

end

end A367238.P7229226998286531883

/-! ## A367238.P5320047323124015060

`A349331(n)-A039999(A000312(n))`
-/

namespace A367238.P5320047323124015060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349331 n - A039999 (A000312 n).toNat

end

end A367238.P5320047323124015060

/-!
# A367239: G.f. A(x) satisfies A(x) = 1 + x*A(x) / (1 - x*A(x)^2)^3.

The programs for A367239, there is no canonical definition to state claims against.
-/

/-! ## A367239.P11843674867185608031

`A186997(n)+A185274(n²-C(n, 2))`
-/

namespace A367239.P11843674867185608031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186997 n + A185274 (n ^ 2 - Nat.choose n 2)

end

end A367239.P11843674867185608031

/-! ## A367239.P14087247721699872620

`A241638(∑[∏{e}[n, #+1]])+A099952(n+2)`
-/

namespace A367239.P14087247721699872620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241638 (∑ j ∈ Finset.range (n + 1), f1 j) + A099952 (n + 2)

end

end A367239.P14087247721699872620

/-!
# A367240: G.f. satisfies A(x) = 1 + x*A(x)^2 / (1 - x*A(x)^2)^3.

The programs for A367240, there is no canonical definition to state claims against.
-/

/-! ## A367240.P10254849940833374827

`A062410(n+1)+A054895(A366119(n))`
-/

namespace A367240.P10254849940833374827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062410 (n + 1) + A054895 (A366119 n).toNat

end

end A367240.P10254849940833374827

/-! ## A367240.P9728813558905344931

`A008624(A193236(n)+A002262(n+4))`
-/

namespace A367240.P9728813558905344931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A193236 n + A002262 (n + 4)).toNat

end

end A367240.P9728813558905344931

/-!
# A367241: G.f. satisfies A(x) = 1 + x*A(x)^3 / (1 - x*A(x)^2)^3.

The programs for A367241, there is no canonical definition to state claims against.
-/

/-! ## A367241.P15267192901476732262

`A262671(C(n, ∑{e}[n+1, #]))`
-/

namespace A367241.P15267192901476732262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262671 (Nat.choose n (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A367241.P15267192901476732262

/-!
# A367242: G.f. satisfies A(x) = 1 + x / (1 - x*A(x)^3)^2.

The programs for A367242, there is no canonical definition to state claims against.
-/

/-! ## A367242.P9245560439780002158

`A051534(A181545(n))`
-/

namespace A367242.P9245560439780002158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051534 (A181545 n).toNat

end

end A367242.P9245560439780002158

/-! ## A367242.P15928172118939526215

`A139036(A008549(n)+1)`
-/

namespace A367242.P15928172118939526215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139036 (A008549 n + 1).toNat

end

end A367242.P15928172118939526215

/-!
# A367243: a(n) is the number of n-digit numbers whose difference between the largest and smallest digits is equal to 2.

The programs for A367243, the canonical program `A367243.P9043573996983531769` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367243 has offset 1).

The definition of A367243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367243.P9043573996983531769

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=15, a(2)=91`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367243

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P9043573996983531769.Spec : Prop :=
  ∀ n, P9043573996983531769.a n = A367243 (n + 1)

theorem P9043573996983531769.correct : P9043573996983531769.Spec := by
  intro n
  simp only [A367243, Nat.add_sub_cancel]

end A367243

/-! ## A367243.P6915515519157824727

`(46*3^(n+1)-93*2^(n+1)+48)/6`
-/

namespace A367243.P6915515519157824727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((46 * 3 ^ (n + 1) : ℤ) - (93 * 2 ^ (n + 1) : ℤ) + 48 : ℚ) / 6

end

end A367243.P6915515519157824727

namespace A367243

/-- `(46*3^(n+1)-93*2^(n+1)+48)/6` -/
def P6915515519157824727.Spec : Prop :=
  ∀ n, P6915515519157824727.a n = (A367243 (n + 1) : ℚ)

theorem P6915515519157824727.correct : P6915515519157824727.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A367243, Nat.add_sub_cancel, A367243.P6915515519157824727.a, A367243.P9043573996983531769.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A367243, Nat.add_sub_cancel, A367243.P6915515519157824727.a, A367243.P9043573996983531769.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A367243

/-!
# A367244: a(n) is the number of n-digit numbers whose difference between the largest and smallest digits is equal to 3.

The programs for A367244, the canonical program `A367244.P15024154384499462599` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367244 has offset 1).

The definition of A367244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367244.P15024154384499462599

`27*4^n-41*3^n+7*2^(n+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367244

/-- `27*4^n-41*3^n+7*2^(n+1)` -/
def P15024154384499462599.Spec : Prop :=
  ∀ n, P15024154384499462599.a n = A367244 (n + 1)

theorem P15024154384499462599.correct : P15024154384499462599.Spec := by
  intro n
  simp only [A367244, Nat.add_sub_cancel]

end A367244

/-!
# A367245: a(n) is the number of n-digit numbers whose difference between the largest and smallest digits is equal to 4.

The programs for A367245, the canonical program `A367245.P18315297920019430573` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367245 has offset 1).

The definition of A367245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367245.P18315297920019430573

`29*5^n-47*4^n+2*3^(n+2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367245

/-- `29*5^n-47*4^n+2*3^(n+2)` -/
def P18315297920019430573.Spec : Prop :=
  ∀ n, P18315297920019430573.a n = A367245 (n + 1)

theorem P18315297920019430573.correct : P18315297920019430573.Spec := by
  intro n
  simp only [A367245, Nat.add_sub_cancel]

end A367245

/-!
# A367246: a(n) is the number of n-digit numbers whose difference between the largest and smallest digits is equal to 5.

The programs for A367246, the canonical program `A367246.P7190475376441370750` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367246 has offset 1).

The definition of A367246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367246.P7190475376441370750

`29*6^n-49*5^n+5*4^(n+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367246

/-- `29*6^n-49*5^n+5*4^(n+1)` -/
def P7190475376441370750.Spec : Prop :=
  ∀ n, P7190475376441370750.a n = A367246 (n + 1)

theorem P7190475376441370750.correct : P7190475376441370750.Spec := by
  intro n
  simp only [A367246, Nat.add_sub_cancel]

end A367246

/-!
# A367247: a(n) is the number of n-digit numbers whose difference between the largest and smallest digits is equal to 6.

The programs for A367247, the canonical program `A367247.P17077043657358533388` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367247 has offset 1).

The definition of A367247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367247.P17077043657358533388

`27*7^n-47*6^n+4*5^(n+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367247

/-- `27*7^n-47*6^n+4*5^(n+1)` -/
def P17077043657358533388.Spec : Prop :=
  ∀ n, P17077043657358533388.a n = A367247 (n + 1)

theorem P17077043657358533388.correct : P17077043657358533388.Spec := by
  intro n
  simp only [A367247, Nat.add_sub_cancel]

end A367247

/-!
# A367248: a(n) is the number of n-digit numbers whose difference between the largest and smallest digits is equal to 7.

The programs for A367248, the canonical program `A367248.P14367439059734941222` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367248 has offset 1).

The definition of A367248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367248.P14367439059734941222

`23*8^n-41*7^n+3*6^(n+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367248

/-- `23*8^n-41*7^n+3*6^(n+1)` -/
def P14367439059734941222.Spec : Prop :=
  ∀ n, P14367439059734941222.a n = A367248 (n + 1)

theorem P14367439059734941222.correct : P14367439059734941222.Spec := by
  intro n
  simp only [A367248, Nat.add_sub_cancel]

end A367248

/-!
# A367249: a(n) is the number of n-digit numbers whose difference between the largest and smallest digits is equal to 8.

The programs for A367249, the canonical program `A367249.P9053356514132181826` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367249 has offset 1).

The definition of A367249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367249.P9053356514132181826

`17*9^n-31*8^n+2*7^(n+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367249

/-- `17*9^n-31*8^n+2*7^(n+1)` -/
def P9053356514132181826.Spec : Prop :=
  ∀ n, P9053356514132181826.a n = A367249 (n + 1)

theorem P9053356514132181826.correct : P9053356514132181826.Spec := by
  intro n
  simp only [A367249, Nat.add_sub_cancel]

end A367249

/-!
# A367250: a(n) is the number of n-digit numbers whose difference between the largest and smallest digits is equal to 9.

The programs for A367250, the canonical program `A367250.P8528951362059641013` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367250 has offset 1).

The definition of A367250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367250.P8528951362059641013

`9*10^n-17*9^n+8^(n+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367250

/-- `9*10^n-17*9^n+8^(n+1)` -/
def P8528951362059641013.Spec : Prop :=
  ∀ n, P8528951362059641013.a n = A367250 (n + 1)

theorem P8528951362059641013.correct : P8528951362059641013.Spec := by
  intro n
  simp only [A367250, Nat.add_sub_cancel]

end A367250

/-!
# A367251: Lexicographically earliest sequence starting 1,2 which can be arranged in a mirror symmetric array shape such that a(n) is the length of the n-th row and no column has the same value more than once.

The programs for A367251, there is no canonical definition to state claims against.
-/

/-! ## A367251.P3893172173611659533

`gcd(A023137(A340098(n+1)), A153678(n+1))`
-/

namespace A367251.P3893172173611659533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023137 (A340098 (n + 1)).toNat) (A153678 (n + 1))

end

end A367251.P3893172173611659533

/-! ## A367251.P1986442342998408852

`A246359(A331277(2*(n+2))+A003961(2*n+1))`
-/

namespace A367251.P1986442342998408852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A331277 (2 * (n + 2)) + A003961 (2 * n + 1)).toNat

end

end A367251.P1986442342998408852

/-! ## A367251.P8486475522801513828

`A162642(A172974(2*(n+1))+A001597(2*n+5))`
-/

namespace A367251.P8486475522801513828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A172974 (2 * (n + 1)) + A001597 (2 * n + 5)).toNat

end

end A367251.P8486475522801513828

/-!
# A367254: a(n) = binomial(2*n - 1, n - 1)*(2*n)^n.

The programs for A367254, there is no canonical definition to state claims against.
-/

/-! ## A367254.P9892045951111377147

`n^n*A069723(n+1)`
-/

namespace A367254.P9892045951111377147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A069723 (n + 1)

end

end A367254.P9892045951111377147

/-! ## A367254.P14164484733650441241

`(2*n)^n*A088218(n)`
-/

namespace A367254.P14164484733650441241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ n : ℤ) * A088218 n

end

end A367254.P14164484733650441241

/-! ## A367254.P7084426375171865105

`A000079(n)*A293270(n)`
-/

namespace A367254.P7084426375171865105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A293270 n

end

end A367254.P7084426375171865105

/-! ## A367254.P9538361990127920148

`A262258(2*n+1)*A291699(n)`
-/

namespace A367254.P9538361990127920148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262258 (2 * n + 1) * A291699 n

end

end A367254.P9538361990127920148

/-! ## A367254.P11696820992217405937

`A011782(n)*A059299(A046092(n))`
-/

namespace A367254.P11696820992217405937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A059299 (A046092 n).toNat

end

end A367254.P11696820992217405937

/-!
# A367255: a(n) = (n + 1)^(n - 2)*(3*n + 1).

The programs for A367255, the canonical program `A367255.P3734428243993847854` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367255 has offset 0).

The definition of A367255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367255.P3734428243993847854

`(n+1)^(n-2)*(3*n+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367255

/-- `(n+1)^(n-2)*(3*n+1)` -/
def P3734428243993847854.Spec : Prop :=
  ∀ n, P3734428243993847854.a n = (A367255 n : ℚ)

end A367255

/-! ## A367255.P8953966191954643372

`A000169(n+1)-2*A053507(n+1)`
-/

namespace A367255.P8953966191954643372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) - 2 * A053507 (n + 1)

end

end A367255.P8953966191954643372

namespace A367255

/-- `A000169(n+1)-2*A053507(n+1)` -/
def P8953966191954643372.Spec : Prop :=
  ∀ n, P8953966191954643372.a n = A367255 n

end A367255

/-!
# A367256: a(n) = Sum_{k=0..n} binomial(n, k) * binomial(n - 1, k - 1) * n^(n - k).

The programs for A367256, there is no canonical definition to state claims against.
-/

/-! ## A367256.P12862352758821467856

`A304714(or(2, C(7*n, 2)/7))`
-/

namespace A367256.P12862352758821467856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304714 (Int.lor 2 (SequenceMachineLib.roundAway ((Nat.choose (7 * n) 2 : ℚ) / 7))).toNat

end

end A367256.P12862352758821467856

/-!
# A367258: G.f. satisfies A(x) = 1 + x*A(x) * (1 + x*A(x)^2)^2.

The programs for A367258, there is no canonical definition to state claims against.
-/

/-! ## A367258.P8612413369914326458

`A026405(A150559(n))`
-/

namespace A367258.P8612413369914326458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026405 (A150559 n).toNat

end

end A367258.P8612413369914326458

/-! ## A367258.P7971938058853077010

`A261221(A151304(n))`
-/

namespace A367258.P7971938058853077010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (A151304 n).toNat

end

end A367258.P7971938058853077010

/-! ## A367258.P4071996445137417165

`A350348(A338185(n))`
-/

namespace A367258.P4071996445137417165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A338185 n).toNat

end

end A367258.P4071996445137417165

/-!
# A367259: G.f. satisfies A(x) = 1 + x*A(x)^3 * (1 + x*A(x))^2.

The programs for A367259, there is no canonical definition to state claims against.
-/

/-! ## A367259.P12514412130536224895

`A004396(A215466(n)+A008611(n))`
-/

namespace A367259.P12514412130536224895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A215466 n + A008611 n).toNat

end

end A367259.P12514412130536224895

/-! ## A367259.P5941798389663190414

`A004396(A215466(n)+A008620(n))`
-/

namespace A367259.P5941798389663190414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A215466 n + A008620 n).toNat

end

end A367259.P5941798389663190414

/-!
# A367260: G.f. satisfies A(x) = 1 + x*A(x)^3 * (1 + x*A(x))^3.

The programs for A367260, there is no canonical definition to state claims against.
-/

/-! ## A367260.P1798800914774384664

`A366496(n)-A004198(A002494(n+2))`
-/

namespace A367260.P1798800914774384664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366496 n - A004198 (A002494 (n + 2)).toNat

end

end A367260.P1798800914774384664

/-!
# A367261: G.f. satisfies A(x) = 1 + x*A(x) * (1 + x*A(x)^2)^3.

The programs for A367261, there is no canonical definition to state claims against.
-/

/-! ## A367261.P5613715374042648887

`∑[A083050(4*a(n-1)+3)]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A367261.P5613715374042648887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  A083050 (4 * f1 (n - 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367261.P5613715374042648887

/-! ## A367261.P13979707250328077213

`A189484(A026938(n))`
-/

namespace A367261.P13979707250328077213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189484 (A026938 n).toNat

end

end A367261.P13979707250328077213

/-!
# A367265: Numbers k such that there exists i >= 1 such that k divides 3^3^i - 1.

The programs for A367265, there is no canonical definition to state claims against.
-/

/-! ## A367265.P13937684549858163428

`A361480(A068978(n+1))`
-/

namespace A367265.P13937684549858163428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361480 (A068978 (n + 1)).toNat

end

end A367265.P13937684549858163428

/-! ## A367265.P3515007031581978147

`eq[1, A268835(A268717(n))]`
-/

namespace A367265.P3515007031581978147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268835 (A268717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367265.P3515007031581978147

/-!
# A367266: Numbers k such that there exists i >= 1 such that k divides 3^3^i + 1.

The programs for A367266, there is no canonical definition to state claims against.
-/

/-! ## A367266.P8816948062887912216

`eq[n, A240162(n+1)]+1`
-/

namespace A367266.P8816948062887912216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240162 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A367266.P8816948062887912216

/-! ## A367266.P8544614330929479260

`A098550(n+1)+A033270(A348305(n+1))`
-/

namespace A367266.P8544614330929479260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1) + A033270 (A348305 (n + 1)).toNat

end

end A367266.P8544614330929479260

/-! ## A367266.P8657926736070427507

`lt[A056813(3*n+5), A002117(A016725(n))]`
-/

namespace A367266.P8657926736070427507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (A016725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367266.P8657926736070427507

/-!
# A367267: Triangle read by rows. T(n, k) = binomial(n, k) * binomial(n - 1, k - 1).

The programs for A367267, there is no canonical definition to state claims against.
-/

/-! ## A367267.P7626189834901633170

`(C(comp[∑[n]]-n, 2)-n)*A090181(n)`
-/

namespace A367267.P7626189834901633170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A090181 n

end

end A367267.P7626189834901633170

/-! ## A367267.P3224376905558257531

`A271703(n)/(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A367267.P3224376905558257531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271703 n : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)

end

end A367267.P3224376905558257531

/-! ## A367267.P1355214790430057665

`A367270(A061579(n))`
-/

namespace A367267.P1355214790430057665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367270 (A061579 n).toNat

end

end A367267.P1355214790430057665

/-! ## A367267.P14962995507566383985

`A367270(A038722(n+2))`
-/

namespace A367267.P14962995507566383985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367270 (A038722 (n + 2)).toNat

end

end A367267.P14962995507566383985

/-! ## A367267.P8870706247094134348

`A007318(n)*A097805(n)`
-/

namespace A367267.P8870706247094134348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A097805 n

end

end A367267.P8870706247094134348

/-! ## A367267.P8613364795909224766

`A091918(n)*A097805(n)`
-/

namespace A367267.P8613364795909224766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A097805 n

end

end A367267.P8613364795909224766

/-! ## A367267.P15256370912217844861

`A097805(n)*A132749(n)`
-/

namespace A367267.P15256370912217844861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A132749 n

end

end A367267.P15256370912217844861

/-! ## A367267.P9699104680674048909

`A097805(n)*A135227(n)`
-/

namespace A367267.P9699104680674048909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A135227 n

end

end A367267.P9699104680674048909

/-! ## A367267.P2807793604311137214

`A097805(n)*A183154(n)`
-/

namespace A367267.P2807793604311137214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A183154 n

end

end A367267.P2807793604311137214

/-! ## A367267.P1050679699891425625

`A090181(n)*A193592(n)`
-/

namespace A367267.P1050679699891425625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n * A193592 n

end

end A367267.P1050679699891425625

/-!
# A367268: Numbers k that are not squarefree, not prime powers, and not products of primorials.

The programs for A367268, there is no canonical definition to state claims against.
-/

/-! ## A367268.P17684015802170799735

`∪[A056808(n+1), A368089(n+1)]`
-/

namespace A367268.P17684015802170799735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367268.P17684015802170799735

/-! ## A367268.P16562887739465069965

`∪[A071365(n+1), A368089(n+1)]`
-/

namespace A367268.P16562887739465069965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367268.P16562887739465069965

/-! ## A367268.P17482793328697583238

`∪[A369636(n+1), A387919(n+1)]`
-/

namespace A367268.P17482793328697583238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367268.P17482793328697583238

/-! ## A367268.P11176136264430133878

`filter[A369361(n+1), A355447(#)]`
-/

namespace A367268.P11176136264430133878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A367268.P11176136264430133878

/-! ## A367268.P13839446880853745624

`∩[A126706(n+1), A369361(n+1)]`
-/

namespace A367268.P13839446880853745624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367268.P13839446880853745624

/-!
# A367269: Triangle T(n, k) read by rows and based on A042948 yields a permutation of the natural numbers.

The programs for A367269, there is no canonical definition to state claims against.
-/

/-! ## A367269.P13876089602840595706

`A211377(∑[char[∑[n]]]²-n)`
-/

namespace A367269.P13876089602840595706
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A367269.P13876089602840595706

/-! ## A367269.P16583415923143012159

`A221217(A213171(n+1))`
-/

namespace A367269.P16583415923143012159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A213171 (n + 1)).toNat

end

end A367269.P16583415923143012159

/-!
# A367270: Triangle read by rows. T(n, k) = binomial(n, k)*binomial(n - 1, n - k - 1).

The programs for A367270, the canonical program `A367270.P16788633298638665148` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367270 has offset 0).

The definition of A367270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367270.P4921946291023136260

`(n+1-C(round(sqrt(2*n+1)), 2))*A131198(n)`
-/

namespace A367270.P4921946291023136260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat 2 : ℤ)) * A131198 n

end

end A367270.P4921946291023136260

namespace A367270

/-- `(n+1-C(round(sqrt(2*n+1)), 2))*A131198(n)` -/
def P4921946291023136260.Spec : Prop :=
  ∀ n, P4921946291023136260.a n = A367270 n

end A367270

/-! ## A367270.P16788633298638665148

`A007318(n)*A071919(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A367270

/-- `A007318(n)*A071919(n)` -/
def P16788633298638665148.Spec : Prop :=
  ∀ n, P16788633298638665148.a n = A367270 n

theorem P16788633298638665148.correct : P16788633298638665148.Spec := by
  intro n
  simp only [A367270]

end A367270

/-! ## A367270.P7245558132265953692

`A128227(n)*A131198(n)`
-/

namespace A367270.P7245558132265953692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A131198 n

end

end A367270.P7245558132265953692

namespace A367270

/-- `A128227(n)*A131198(n)` -/
def P7245558132265953692.Spec : Prop :=
  ∀ n, P7245558132265953692.a n = A367270 n

end A367270

/-! ## A367270.P3292471501305712676

`A131198(n)*A193738(n)`
-/

namespace A367270.P3292471501305712676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131198 n * A193738 n

end

end A367270.P3292471501305712676

namespace A367270

/-- `A131198(n)*A193738(n)` -/
def P3292471501305712676.Spec : Prop :=
  ∀ n, P3292471501305712676.a n = A367270 n

end A367270

/-! ## A367270.P2698094886280108561

`abs(A007318(n)*A110555(n))`
-/

namespace A367270.P2698094886280108561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007318 n * A110555 n|

end

end A367270.P2698094886280108561

namespace A367270

/-- `abs(A007318(n)*A110555(n))` -/
def P2698094886280108561.Spec : Prop :=
  ∀ n, P2698094886280108561.a n = A367270 n

end A367270

/-! ## A367270.P5876750181574054643

`abs(A071919(n)*A108086(n))`
-/

namespace A367270.P5876750181574054643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071919 n * A108086 n|

end

end A367270.P5876750181574054643

namespace A367270

/-- `abs(A071919(n)*A108086(n))` -/
def P5876750181574054643.Spec : Prop :=
  ∀ n, P5876750181574054643.a n = A367270 n

end A367270

/-! ## A367270.P11852578692146583459

`Δ[A102363(n)]*A071919(n)`
-/

namespace A367270.P11852578692146583459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A071919 n

end

end A367270.P11852578692146583459

namespace A367270

/-- `Δ[A102363(n)]*A071919(n)` -/
def P11852578692146583459.Spec : Prop :=
  ∀ n, P11852578692146583459.a n = A367270 n

end A367270

/-! ## A367270.P15091646600489097736

`A002260(n+1)*A131198(n)`
-/

namespace A367270.P15091646600489097736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A131198 n

end

end A367270.P15091646600489097736

namespace A367270

/-- `A002260(n+1)*A131198(n)` -/
def P15091646600489097736.Spec : Prop :=
  ∀ n, P15091646600489097736.a n = A367270 n

end A367270

/-! ## A367270.P5304593378959275862

`A080511(n+1)*A131198(n)`
-/

namespace A367270.P5304593378959275862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080511 (n + 1) * A131198 n

end

end A367270.P5304593378959275862

namespace A367270

/-- `A080511(n+1)*A131198(n)` -/
def P5304593378959275862.Spec : Prop :=
  ∀ n, P5304593378959275862.a n = A367270 n

end A367270

/-! ## A367270.P5844845390165460268

`A080818(n+1)*A131198(n)`
-/

namespace A367270.P5844845390165460268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080818 (n + 1) * A131198 n

end

end A367270.P5844845390165460268

namespace A367270

/-- `A080818(n+1)*A131198(n)` -/
def P5844845390165460268.Spec : Prop :=
  ∀ n, P5844845390165460268.a n = A367270 n

end A367270

/-! ## A367270.P11025881940589402426

`A128077(n+1)*A131198(n)`
-/

namespace A367270.P11025881940589402426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128077 (n + 1) * A131198 n

end

end A367270.P11025881940589402426

namespace A367270

/-- `A128077(n+1)*A131198(n)` -/
def P11025881940589402426.Spec : Prop :=
  ∀ n, P11025881940589402426.a n = A367270 n

end A367270

/-! ## A367270.P9613526748497367654

`(A298485(n)+A008482(n))*A007318(n)`
-/

namespace A367270.P9613526748497367654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A298485 n + A008482 n) * A007318 n

end

end A367270.P9613526748497367654

namespace A367270

/-- `(A298485(n)+A008482(n))*A007318(n)` -/
def P9613526748497367654.Spec : Prop :=
  ∀ n, P9613526748497367654.a n = A367270 n

end A367270

/-! ## A367270.P12383290422645912838

`(A298485(n)-A037012(n))*A007318(n)`
-/

namespace A367270.P12383290422645912838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A298485 n - A037012 n) * A007318 n

end

end A367270.P12383290422645912838

namespace A367270

/-- `(A298485(n)-A037012(n))*A007318(n)` -/
def P12383290422645912838.Spec : Prop :=
  ∀ n, P12383290422645912838.a n = A367270 n

end A367270

/-! ## A367270.P1976192128949830166

`(A097805(n+1)+A097805(n))*A071919(n)`
-/

namespace A367270.P1976192128949830166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097805 (n + 1) + A097805 n) * A071919 n

end

end A367270.P1976192128949830166

namespace A367270

/-- `(A097805(n+1)+A097805(n))*A071919(n)` -/
def P1976192128949830166.Spec : Prop :=
  ∀ n, P1976192128949830166.a n = A367270 n

end A367270

/-! ## A367270.P16423251992875230531

`A081517(n+1)*A131198(n)`
-/

namespace A367270.P16423251992875230531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081517 (n + 1) * A131198 n

end

end A367270.P16423251992875230531

namespace A367270

/-- `A081517(n+1)*A131198(n)` -/
def P16423251992875230531.Spec : Prop :=
  ∀ n, P16423251992875230531.a n = A367270 n

end A367270

/-! ## A367270.P13520041251838533074

`A080508(n+1)*A131198(n)`
-/

namespace A367270.P13520041251838533074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080508 (n + 1) * A131198 n

end

end A367270.P13520041251838533074

namespace A367270

/-- `A080508(n+1)*A131198(n)` -/
def P13520041251838533074.Spec : Prop :=
  ∀ n, P13520041251838533074.a n = A367270 n

end A367270

/-!
# A367271: a(n) = binomial(2*n, n) * n^n.

The programs for A367271, the canonical program `A367271.P1608141040328364271` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367271 has offset 0).

The definition of A367271 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n, n)*n^n` (program `A367271.P1608141040328364271`, by `A367271.P1608141040328364271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A367271.P1608141040328364271

`C(2*n, n)*n^n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367271

/-- `C(2*n, n)*n^n` -/
def P1608141040328364271.Spec : Prop :=
  ∀ n, (P1608141040328364271.a n : ℤ) = A367271 n

theorem P1608141040328364271.correct : P1608141040328364271.Spec := by
  intro n
  simp only [A367271]

end A367271

/-! ## A367271.P3173997043132618780

`A367274(2*n)`
-/

namespace A367271.P3173997043132618780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367274 (2 * n)

end

end A367271.P3173997043132618780

namespace A367271

/-- `A367274(2*n)` -/
def P3173997043132618780.Spec : Prop :=
  ∀ n, P3173997043132618780.a n = A367271 n

end A367271

/-! ## A367271.P4035903934886036431

`(n+1)*A291699(n)`
-/

namespace A367271.P4035903934886036431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A291699 n

end

end A367271.P4035903934886036431

namespace A367271

/-- `(n+1)*A291699(n)` -/
def P4035903934886036431.Spec : Prop :=
  ∀ n, P4035903934886036431.a n = A367271 n

end A367271

/-! ## A367271.P2532733882208640457

`n^n*A000984(n)`
-/

namespace A367271.P2532733882208640457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A000984 n

end

end A367271.P2532733882208640457

namespace A367271

/-- `n^n*A000984(n)` -/
def P2532733882208640457.Spec : Prop :=
  ∀ n, P2532733882208640457.a n = A367271 n

theorem P2532733882208640457.correct : P2532733882208640457.Spec := by
  intro n
  simp only [A367271, Nat.add_sub_cancel, A367271.P2532733882208640457.a, A367271.P1608141040328364271.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A367271

/-! ## A367271.P16079477416068851543

`A000312(n)*A001405(2*n)`
-/

namespace A367271.P16079477416068851543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A001405 (2 * n)

end

end A367271.P16079477416068851543

namespace A367271

/-- `A000312(n)*A001405(2*n)` -/
def P16079477416068851543.Spec : Prop :=
  ∀ n, P16079477416068851543.a n = A367271 n

end A367271

/-!
# A367272: a(n) = Sum_{k=0..n} binomial(n, k)^2 * k^(n - k).

The programs for A367272, there is no canonical definition to state claims against.
-/

/-! ## A367272.P2991093812822943017

`∏{p}[(2*n)!, #]-∑{e}[n+1, #]`
-/

namespace A367272.P2991093812822943017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A367272.P2991093812822943017

/-!
# A367274: a(n) = binomial(n, k) * (n - k)^k where k = floor(n/2).

The programs for A367274, there is no canonical definition to state claims against.
-/

/-! ## A367274.P5563184265877616362

`A001405(n)*A110138(n)`
-/

namespace A367274.P5563184265877616362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A110138 n

end

end A367274.P5563184265877616362

/-! ## A367274.P8151684345095909405

`A110138(n)*A210736(n+1)`
-/

namespace A367274.P8151684345095909405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110138 n * A210736 (n + 1)

end

end A367274.P8151684345095909405

/-! ## A367274.P14920523763379595941

`A059300(A007590(n))`
-/

namespace A367274.P14920523763379595941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059300 (A007590 n).toNat

end

end A367274.P14920523763379595941

/-! ## A367274.P16942889800923887881

`A059300(A047838(n+2)-(2*n+1))`
-/

namespace A367274.P16942889800923887881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059300 (A047838 (n + 2) - (2 * n + 1 : ℤ)).toNat

end

end A367274.P16942889800923887881

/-! ## A367274.P7820411816253416710

`A059297(A007590(n+1))`
-/

namespace A367274.P7820411816253416710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059297 (A007590 (n + 1)).toNat

end

end A367274.P7820411816253416710

/-!
# A367275: a(n) = 3^(n - 1) * (9^n - 1) / 8, n >= 1.

The programs for A367275, the canonical program `A367275.P3783398042523088868` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367275 has offset 1).

The definition of A367275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367275.P14864129538831722522

`3^n*(9^(n+1)-1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367275.P14864129538831722522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) * ((9 ^ (n + 1) : ℤ) - 1) : ℚ) / 8

end

end A367275.P14864129538831722522

namespace A367275

/-- `3^n*(9^(n+1)-1)/8` -/
def P14864129538831722522.Spec : Prop :=
  ∀ n, P14864129538831722522.a n = (A367275 (n + 1) : ℚ)

end A367275

/-! ## A367275.P3783398042523088868

`3*a(n-1)+3^(3*n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367275

/-- `3*a(n-1)+3^(3*n)` -/
def P3783398042523088868.Spec : Prop :=
  ∀ n, (P3783398042523088868.a n : ℤ) = A367275 (n + 1)

theorem P3783398042523088868.correct : P3783398042523088868.Spec := by
  intro n
  simp only [A367275, Nat.add_sub_cancel]

end A367275

/-! ## A367275.P2321271858751155518

`A000244(n)*A002452(n+1)`
-/

namespace A367275.P2321271858751155518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A002452 (n + 1)

end

end A367275.P2321271858751155518

namespace A367275

/-- `A000244(n)*A002452(n+1)` -/
def P2321271858751155518.Spec : Prop :=
  ∀ n, P2321271858751155518.a n = A367275 (n + 1)

end A367275

/-! ## A367275.P1627659002810072941

`lcm(3^n, ∑[9^n])`
-/

namespace A367275.P1627659002810072941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (3 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367275.P1627659002810072941

namespace A367275

/-- `lcm(3^n, ∑[9^n])` -/
def P1627659002810072941.Spec : Prop :=
  ∀ n, (P1627659002810072941.a n : ℤ) = A367275 (n + 1)

end A367275

/-! ## A367275.P3540228776040752739

`A002452(n+1)*A038754(2*n)`
-/

namespace A367275.P3540228776040752739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 (n + 1) * A038754 (2 * n)

end

end A367275.P3540228776040752739

namespace A367275

/-- `A002452(n+1)*A038754(2*n)` -/
def P3540228776040752739.Spec : Prop :=
  ∀ n, P3540228776040752739.a n = A367275 (n + 1)

end A367275

/-! ## A367275.P15664887105705785396

`(A003462(n+1)-A003462(n))*A002452(n+1)`
-/

namespace A367275.P15664887105705785396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003462 (n + 1) - A003462 n) * A002452 (n + 1)

end

end A367275.P15664887105705785396

namespace A367275

/-- `(A003462(n+1)-A003462(n))*A002452(n+1)` -/
def P15664887105705785396.Spec : Prop :=
  ∀ n, P15664887105705785396.a n = A367275 (n + 1)

end A367275

/-!
# A367276: Place n equally spaced points on each side of a square, and join each of these points by a chord to the 3*n new points on the other three sides: sequence gives number of vertices in the resulting planar graph.

The programs for A367276, there is no canonical definition to state claims against.
-/

/-! ## A367276.P15286916308292244774

`A367279(n)-A367278(n)+1`
-/

namespace A367276.P15286916308292244774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367279 n - A367278 n + 1

end

end A367276.P15286916308292244774

/-! ## A367276.P10489820296613619246

`A367277(n)+4*(n+1)`
-/

namespace A367276.P10489820296613619246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367277 n + (4 * (n + 1) : ℤ)

end

end A367276.P10489820296613619246

/-! ## A367276.P11869485460232418099

`A331449(n+1)+A367277(n)-A334690(n+1)`
-/

namespace A367276.P11869485460232418099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331449 (n + 1) + (A367277 n - A334690 (n + 1))

end

end A367276.P11869485460232418099

/-! ## A367276.P18260956458671302053

`A367302(∑[n+1]+4)`
-/

namespace A367276.P18260956458671302053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367302 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A367276.P18260956458671302053

/-! ## A367276.P8071385188722024648

`A367303(∑[n+1]+4)+4*(n+1)`
-/

namespace A367276.P8071385188722024648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367303 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + (4 * (n + 1) : ℤ)

end

end A367276.P8071385188722024648

/-!
# A367277: Place n equally spaced points on each side of a square, and join each of these points by a chord to the 3*n new points on the other three sides: sequence gives number of interior vertices in the resulting planar graph.

The programs for A367277, there is no canonical definition to state claims against.
-/

/-! ## A367277.P13867711448188714096

`A367279(n)-A367278(n)-4*n-3`
-/

namespace A367277.P13867711448188714096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367279 n - A367278 n - (4 * n : ℤ) - 3

end

end A367277.P13867711448188714096

/-! ## A367277.P4080791544078378166

`A367276(n)-A008586(n+1)`
-/

namespace A367277.P4080791544078378166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367276 n - A008586 (n + 1)

end

end A367277.P4080791544078378166

/-! ## A367277.P10248773553117005094

`A367276(n)-A059558(n+1)`
-/

namespace A367277.P10248773553117005094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367276 n - A059558 (n + 1)

end

end A367277.P10248773553117005094

/-! ## A367277.P4596338037900684608

`A367276(n)-A367286(A006368(2*(n+1)))`
-/

namespace A367277.P4596338037900684608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367276 n - A367286 (A006368 (2 * (n + 1))).toNat

end

end A367277.P4596338037900684608

/-! ## A367277.P6140443207040769833

`A334690(n+1)+A367276(n)-A331449(n+1)`
-/

namespace A367277.P6140443207040769833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334690 (n + 1) + (A367276 n - A331449 (n + 1))

end

end A367277.P6140443207040769833

/-!
# A367278: Place n equally spaced points on each side of a square, and join each of these points by a chord to the 3*n new points on the other three sides: sequence gives number of regions in the resulting planar graph.

The programs for A367278, there is no canonical definition to state claims against.
-/

/-! ## A367278.P2594253238315733846

`A367279(n)-A367276(n)+1`
-/

namespace A367278.P2594253238315733846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367279 n - A367276 n + 1

end

end A367278.P2594253238315733846

/-! ## A367278.P13095569415024236196

`A367304(∑[n+1]+4)`
-/

namespace A367278.P13095569415024236196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367304 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A367278.P13095569415024236196

/-!
# A367279: Place n equally spaced points on each side of a square, and join each of these points by a chord to the 3*n new points on the other three sides: sequence gives number of edges in the resulting planar graph.

The programs for A367279, there is no canonical definition to state claims against.
-/

/-! ## A367279.P2346986020694192215

`A367276(n)+A367278(n)-1`
-/

namespace A367279.P2346986020694192215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367276 n + A367278 n - 1

end

end A367279.P2346986020694192215

/-! ## A367279.P10030885682182046677

`A367305(∑[n+1]+4)`
-/

namespace A367279.P10030885682182046677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367305 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A367279.P10030885682182046677

/-!
# A367280: G.f. satisfies A(x) = 1 + x*A(x)^3 / (1 - x*A(x)^3)^2.

The programs for A367280, there is no canonical definition to state claims against.
-/

/-! ## A367280.P14872942530039350403

`A122799(A345756(n)+A004198(n))`
-/

namespace A367280.P14872942530039350403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122799 (A345756 n + A004198 n).toNat

end

end A367280.P14872942530039350403

/-! ## A367280.P17391991517449579422

`A122799(A345756(n)+A330448(n))`
-/

namespace A367280.P17391991517449579422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122799 (A345756 n + A330448 n).toNat

end

end A367280.P17391991517449579422

/-!
# A367281: G.f. satisfies A(x) = 1 + x*A(x)^2 / (1 - x*A(x)^3)^3.

The programs for A367281, there is no canonical definition to state claims against.
-/

/-! ## A367281.P6048938869154921024

`A032742(A129331(n)+A001250(n))`
-/

namespace A367281.P6048938869154921024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A129331 n + A001250 n).toNat

end

end A367281.P6048938869154921024

/-! ## A367281.P16137089219736897205

`A365181(n)+A030308(A003499(n))`
-/

namespace A367281.P16137089219736897205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365181 n + A030308 (A003499 n).toNat

end

end A367281.P16137089219736897205

/-!
# A367282: G.f. satisfies A(x) = 1 + x*A(x)^2 * (1 + x*A(x)^2)^2.

The programs for A367282, there is no canonical definition to state claims against.
-/

/-! ## A367282.P10837803079424644868

`A378251(11*A069729(n))`
-/

namespace A367282.P10837803079424644868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378251 (11 * A069729 n).toNat

end

end A367282.P10837803079424644868

/-!
# A367283: G.f. satisfies A(x) = 1 + x*A(x)^2 * (1 + x*A(x)^3)^2.

The programs for A367283, there is no canonical definition to state claims against.
-/

/-! ## A367283.P1648291536865610855

`A068639(∑[A000081(2*n+1)])`
-/

namespace A367283.P1648291536865610855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A367283.P1648291536865610855

/-! ## A367283.P5780457954087815931

`A286134(A360766(n))+A128327(n)`
-/

namespace A367283.P5780457954087815931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286134 (A360766 n).toNat + A128327 n

end

end A367283.P5780457954087815931

/-!
# A367284: G.f. satisfies A(x) = 1 + x*A(x) * (1 + x*A(x)^3)^3.

The programs for A367284, there is no canonical definition to state claims against.
-/

/-! ## A367284.P17157834412083572467

`A008621(A188676(n)+A032311(n))`
-/

namespace A367284.P17157834412083572467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A188676 n + A032311 n).toNat

end

end A367284.P17157834412083572467

/-! ## A367284.P5072697210615971203

`A008615(A396432(n)+A001850(n))`
-/

namespace A367284.P5072697210615971203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A396432 n + A001850 n).toNat

end

end A367284.P5072697210615971203

/-!
# A367285: G.f. satisfies A(x) = 1 + x*A(x)^2 * (1 + x*A(x)^2)^3.

The programs for A367285, there is no canonical definition to state claims against.
-/

/-! ## A367285.P1112295129614166600

`A308154(A134244(n+1))`
-/

namespace A367285.P1112295129614166600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308154 (A134244 (n + 1)).toNat

end

end A367285.P1112295129614166600

/-! ## A367285.P5600260847151507123

`A008620(A368938(n)-n)`
-/

namespace A367285.P5600260847151507123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A368938 n - (n : ℤ)).toNat

end

end A367285.P5600260847151507123

/-!
# A367286: Inverse of A342131.

The programs for A367286, the canonical program `A367286.P10401290249193770778` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367286 has offset 0).

The definition of A367286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367286.P10401290249193770778

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=4, a(4)=6, a(5)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367286

/-- `2*a(n-3)-a(n-6)` -/
def P10401290249193770778.Spec : Prop :=
  ∀ n, P10401290249193770778.a n = A367286 n

theorem P10401290249193770778.correct : P10401290249193770778.Spec := by
  intro n
  simp only [A367286]

end A367286

/-! ## A367286.P4527252507182459928

`A006369(n+1)-1`
-/

namespace A367286.P4527252507182459928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (n + 1) - 1

end

end A367286.P4527252507182459928

namespace A367286

/-- `A006369(n+1)-1` -/
def P4527252507182459928.Spec : Prop :=
  ∀ n, P4527252507182459928.a n = A367286 n

end A367286

/-! ## A367286.P12687869996038626676

`xor(1, a(n-3))+3` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A367286.P12687869996038626676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  Nat.xor 1 (a (n - 3)) + 3

end

end A367286.P12687869996038626676

namespace A367286

/-- `xor(1, a(n-3))+3` -/
def P12687869996038626676.Spec : Prop :=
  ∀ n, (P12687869996038626676.a n : ℤ) = A367286 n

end A367286

/-! ## A367286.P5426347124692040661

`floor((lcm(3, n+1)+n-1)/3)`
-/

namespace A367286.P5426347124692040661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm 3 (n + 1) : ℤ) + ((n : ℤ) - 1) : ℚ) / 3⌋

end

end A367286.P5426347124692040661

namespace A367286

/-- `floor((lcm(3, n+1)+n-1)/3)` -/
def P5426347124692040661.Spec : Prop :=
  ∀ n, P5426347124692040661.a n = A367286 n

end A367286

/-! ## A367286.P7514369598125373937

`A265667(A064429(n))`
-/

namespace A367286.P7514369598125373937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (A064429 n).toNat

end

end A367286.P7514369598125373937

namespace A367286

/-- `A265667(A064429(n))` -/
def P7514369598125373937.Spec : Prop :=
  ∀ n, P7514369598125373937.a n = A367286 n

end A367286

/-! ## A367286.P11525545174176486121

`A342131(n)+A168223(n+1)`
-/

namespace A367286.P11525545174176486121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342131 n + A168223 (n + 1)

end

end A367286.P11525545174176486121

namespace A367286

/-- `A342131(n)+A168223(n+1)` -/
def P11525545174176486121.Spec : Prop :=
  ∀ n, P11525545174176486121.a n = A367286 n

end A367286

/-! ## A367286.P16539505625705504903

`(2-A022003(n))*A004396(n)`
-/

namespace A367286.P16539505625705504903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A022003 n) * A004396 n

end

end A367286.P16539505625705504903

namespace A367286

/-- `(2-A022003(n))*A004396(n)` -/
def P16539505625705504903.Spec : Prop :=
  ∀ n, P16539505625705504903.a n = A367286 n

end A367286

/-! ## A367286.P15537326513307087489

`gcd(2, A004523(n))*A004396(n)`
-/

namespace A367286.P15537326513307087489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A004523 n) : ℤ) * A004396 n

end

end A367286.P15537326513307087489

namespace A367286

/-- `gcd(2, A004523(n))*A004396(n)` -/
def P15537326513307087489.Spec : Prop :=
  ∀ n, P15537326513307087489.a n = A367286 n

end A367286

/-! ## A367286.P15558080214147370757

`A117909(n)+n-A008620(n)`
-/

namespace A367286.P15558080214147370757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n + ((n : ℤ) - A008620 n)

end

end A367286.P15558080214147370757

namespace A367286

/-- `A117909(n)+n-A008620(n)` -/
def P15558080214147370757.Spec : Prop :=
  ∀ n, P15558080214147370757.a n = A367286 n

end A367286

/-! ## A367286.P11458266444099305231

`A004772(n+1)%A059030(n+1)`
-/

namespace A367286.P11458266444099305231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004772 (n + 1)) (A059030 (n + 1))

end

end A367286.P11458266444099305231

namespace A367286

/-- `A004772(n+1)%A059030(n+1)` -/
def P11458266444099305231.Spec : Prop :=
  ∀ n, P11458266444099305231.a n = A367286 n

end A367286

/-! ## A367286.P13379311853200973763

`A000034(A004396(n+1))*A004396(n)`
-/

namespace A367286.P13379311853200973763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004396 (n + 1)).toNat * A004396 n

end

end A367286.P13379311853200973763

namespace A367286

/-- `A000034(A004396(n+1))*A004396(n)` -/
def P13379311853200973763.Spec : Prop :=
  ∀ n, P13379311853200973763.a n = A367286 n

end A367286

/-! ## A367286.P2066756890807515578

`Δ[∑[A006369(n)]-n]`
-/

namespace A367286.P2066756890807515578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A367286.P2066756890807515578

namespace A367286

/-- `Δ[∑[A006369(n)]-n]` -/
def P2066756890807515578.Spec : Prop :=
  ∀ n, P2066756890807515578.a n = A367286 n

end A367286

/-! ## A367286.P1725276947047888039

`A074305(A064429(n+1))-1`
-/

namespace A367286.P1725276947047888039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074305 (A064429 (n + 1)).toNat - 1

end

end A367286.P1725276947047888039

namespace A367286

/-- `A074305(A064429(n+1))-1` -/
def P1725276947047888039.Spec : Prop :=
  ∀ n, P1725276947047888039.a n = A367286 n

end A367286

/-! ## A367286.P12248342511148527431

`A004396(n)*A130196(n+1)`
-/

namespace A367286.P12248342511148527431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n * A130196 (n + 1)

end

end A367286.P12248342511148527431

namespace A367286

/-- `A004396(n)*A130196(n+1)` -/
def P12248342511148527431.Spec : Prop :=
  ∀ n, P12248342511148527431.a n = A367286 n

end A367286

/-! ## A367286.P13463668557195424957

`A004396(n)+A004396(n)*A011655(n+1)`
-/

namespace A367286.P13463668557195424957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 n * A011655 (n + 1)

end

end A367286.P13463668557195424957

namespace A367286

/-- `A004396(n)+A004396(n)*A011655(n+1)` -/
def P13463668557195424957.Spec : Prop :=
  ∀ n, P13463668557195424957.a n = A367286 n

end A367286

/-! ## A367286.P4023885061440998207

`A131534(n+1)*A131534(n)*A004396(n)`
-/

namespace A367286.P4023885061440998207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (n + 1) * A131534 n * A004396 n

end

end A367286.P4023885061440998207

namespace A367286

/-- `A131534(n+1)*A131534(n)*A004396(n)` -/
def P4023885061440998207.Spec : Prop :=
  ∀ n, P4023885061440998207.a n = A367286 n

end A367286

/-! ## A367286.P3947163388409135522

`(A066481(n+3)-A004523(n+1))*A004396(n)`
-/

namespace A367286.P3947163388409135522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066481 (n + 3) - A004523 (n + 1)) * A004396 n

end

end A367286.P3947163388409135522

namespace A367286

/-- `(A066481(n+3)-A004523(n+1))*A004396(n)` -/
def P3947163388409135522.Spec : Prop :=
  ∀ n, P3947163388409135522.a n = A367286 n

end A367286

/-! ## A367286.P13361667567973303707

`(A042965(n+2)-A100063(n+1))/A100063(n+1)`
-/

namespace A367286.P13361667567973303707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042965 (n + 2) - A100063 (n + 1) : ℚ) / (A100063 (n + 1) : ℚ)

end

end A367286.P13361667567973303707

namespace A367286

/-- `(A042965(n+2)-A100063(n+1))/A100063(n+1)` -/
def P13361667567973303707.Spec : Prop :=
  ∀ n, P13361667567973303707.a n = (A367286 n : ℚ)

end A367286

/-! ## A367286.P12369254156053013677

`A265667(n+2)-2`
-/

namespace A367286.P12369254156053013677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (n + 2) - 2

end

end A367286.P12369254156053013677

namespace A367286

/-- `A265667(n+2)-2` -/
def P12369254156053013677.Spec : Prop :=
  ∀ n, P12369254156053013677.a n = A367286 n

end A367286

/-! ## A367286.P2253433256567525836

`A186421(A131452(n))`
-/

namespace A367286.P2253433256567525836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (A131452 n).toNat

end

end A367286.P2253433256567525836

namespace A367286

/-- `A186421(A131452(n))` -/
def P2253433256567525836.Spec : Prop :=
  ∀ n, P2253433256567525836.a n = A367286 n

end A367286

/-!
# A367289: Inverse permutation to A367288.

The programs for A367289, there is no canonical definition to state claims against.
-/

/-! ## A367289.P337208630382635579

`A371215(A367288(A371215(A367288(A371215(n)))))`
-/

namespace A367289.P337208630382635579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371215 (A367288 (A371215 (A367288 (A371215 n).toNat).toNat).toNat).toNat

end

end A367289.P337208630382635579

/-!
# A367291: Inverse permutation to A367290.

The programs for A367291, there is no canonical definition to state claims against.
-/

/-! ## A367291.P18049093588304280491

`A367289(A367290(A367289(n+1)))`
-/

namespace A367291.P18049093588304280491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367289 (A367290 (A367289 (n + 1)).toNat).toNat

end

end A367291.P18049093588304280491

/-!
# A367293: Main diagonal of the extended Wythoff array (A287870).

The programs for A367293, there is no canonical definition to state claims against.
-/

/-! ## A367293.P1188825441228047755

`A020941(n+1)-A005206(A020941(n+1))`
-/

namespace A367293.P1188825441228047755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020941 (n + 1) - A005206 (A020941 (n + 1)).toNat

end

end A367293.P1188825441228047755

/-! ## A367293.P17469127456930689185

`A189663(A020941(n+1))`
-/

namespace A367293.P17469127456930689185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A020941 (n + 1)).toNat

end

end A367293.P17469127456930689185

/-! ## A367293.P7122436609044743658

`A060144(A020941(n+1)+1)`
-/

namespace A367293.P7122436609044743658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A020941 (n + 1) + 1).toNat

end

end A367293.P7122436609044743658

/-! ## A367293.P13826323692809482527

`A026272(A020941(n+1))-A130706(n)`
-/

namespace A367293.P13826323692809482527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A020941 (n + 1)).toNat - A130706 n

end

end A367293.P13826323692809482527

/-!
# A367294: Numbers k such that 4 is the first digit of 2^k.

The programs for A367294, the canonical program `A367294.P2160804425599817022` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367294 has offset 1).

The definition of A367294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367294.P2160804425599817022

`eq[4, A008952(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A367294

/-- `eq[4, A008952(n)]` -/
def P2160804425599817022.Spec : Prop :=
  ∀ n, (P2160804425599817022.a n : ℤ) = A367294 (n + 1)

theorem P2160804425599817022.correct : P2160804425599817022.Spec := by
  intro n
  simp only [A367294, Nat.add_sub_cancel]

end A367294

/-! ## A367294.P1012512078130297670

`lt[7, A008952(n+1)]`
-/

namespace A367294.P1012512078130297670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A367294.P1012512078130297670

namespace A367294

/-- `lt[7, A008952(n+1)]` -/
def P1012512078130297670.Spec : Prop :=
  ∀ n, (P1012512078130297670.a n : ℤ) = A367294 (n + 1)

end A367294

/-! ## A367294.P9435036108719312976

`lt[A251984(A367361(n)), 3]`
-/

namespace A367294.P9435036108719312976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A367361 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A367294.P9435036108719312976

namespace A367294

/-- `lt[A251984(A367361(n)), 3]` -/
def P9435036108719312976.Spec : Prop :=
  ∀ n, (P9435036108719312976.a n : ℤ) = A367294 (n + 1)

end A367294

/-! ## A367294.P7271333336258281754

`eq[4, A000030(A247243(n+1))]`
-/

namespace A367294.P7271333336258281754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A247243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367294.P7271333336258281754

namespace A367294

/-- `eq[4, A000030(A247243(n+1))]` -/
def P7271333336258281754.Spec : Prop :=
  ∀ n, (P7271333336258281754.a n : ℤ) = A367294 (n + 1)

end A367294

/-! ## A367294.P1696079712533809276

`A122079(A016921(n))+A016813(n)`
-/

namespace A367294.P1696079712533809276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (A016921 n).toNat + A016813 n

end

end A367294.P1696079712533809276

namespace A367294

/-- `A122079(A016921(n))+A016813(n)` -/
def P1696079712533809276.Spec : Prop :=
  ∀ n, P1696079712533809276.a n = A367294 (n + 1)

end A367294

/-!
# A367295: Numbers k such that 6 is the first digit of 2^k.

The programs for A367295, the canonical program `A367295.P13713340400755399222` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367295 has offset 1).

The definition of A367295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367295.P13713340400755399222

`eq[6, A008952(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A367295

/-- `eq[6, A008952(n)]` -/
def P13713340400755399222.Spec : Prop :=
  ∀ n, (P13713340400755399222.a n : ℤ) = A367295 (n + 1)

theorem P13713340400755399222.correct : P13713340400755399222.Spec := by
  intro n
  simp only [A367295, Nat.add_sub_cancel]

end A367295

/-! ## A367295.P15763420475612418097

`eq[6, A000030(A247243(n+1))]`
-/

namespace A367295.P15763420475612418097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A247243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367295.P15763420475612418097

namespace A367295

/-- `eq[6, A000030(A247243(n+1))]` -/
def P15763420475612418097.Spec : Prop :=
  ∀ n, (P15763420475612418097.a n : ℤ) = A367295 (n + 1)

end A367295

/-!
# A367296: Numbers k such that 8 is the first digit of 2^k.

The programs for A367296, the canonical program `A367296.P16984635311921054484` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367296 has offset 1).

The definition of A367296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367296.P16984635311921054484

`eq[8, A008952(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A367296

/-- `eq[8, A008952(n)]` -/
def P16984635311921054484.Spec : Prop :=
  ∀ n, (P16984635311921054484.a n : ℤ) = A367296 (n + 1)

theorem P16984635311921054484.correct : P16984635311921054484.Spec := by
  intro n
  simp only [A367296, Nat.add_sub_cancel]

end A367296

/-! ## A367296.P17025832237699626161

`lt[A008952(n+4), val(A008952(n), 2)]`
-/

namespace A367296.P17025832237699626161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008952 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A367296.P17025832237699626161

namespace A367296

/-- `lt[A008952(n+4), val(A008952(n), 2)]` -/
def P17025832237699626161.Spec : Prop :=
  ∀ n, (P17025832237699626161.a n : ℤ) = A367296 (n + 1)

end A367296

/-! ## A367296.P15889337156481925979

`lt[A043529(n), val(A008952(n), 2)]`
-/

namespace A367296.P15889337156481925979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008952 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A367296.P15889337156481925979

namespace A367296

/-- `lt[A043529(n), val(A008952(n), 2)]` -/
def P15889337156481925979.Spec : Prop :=
  ∀ n, (P15889337156481925979.a n : ℤ) = A367296 (n + 1)

end A367296

/-! ## A367296.P6175567263097694695

`eq[4, A000030(A247243(n+1))/2]`
-/

namespace A367296.P6175567263097694695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000030 (A247243 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A367296.P6175567263097694695

namespace A367296

/-- `eq[4, A000030(A247243(n+1))/2]` -/
def P6175567263097694695.Spec : Prop :=
  ∀ n, (P6175567263097694695.a n : ℤ) = A367296 (n + 1)

end A367296

