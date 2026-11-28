import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021

/-!
# A250900: Number of (2+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250900, there is no canonical definition to state claims against.
-/

/-! ## A250900.P6931462073531410166

`A250898(∑[n+1]+2)`
-/

namespace A250900.P6931462073531410166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250900.P6931462073531410166

/-! ## A250900.P18270261627563062165

`record[root(A250898(n+3), A036838(n))]`
-/

namespace A250900.P18270261627563062165
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250898 (n + 3) : ℝ) ^ (1 / (A036838 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250900.P18270261627563062165

/-! ## A250900.P7618076379561967916

`record[A250898(A126988(n+1)+n+2)]`
-/

namespace A250900.P7618076379561967916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A126988 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250900.P7618076379561967916

/-! ## A250900.P14052600453667408873

`record[gcd(A210485(n+1), A250898(n+3))]`
-/

namespace A250900.P14052600453667408873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210485 (n + 1)) (A250898 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250900.P14052600453667408873

/-!
# A250901: Number of (3+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250901, there is no canonical definition to state claims against.
-/

/-! ## A250901.P15281833793096146102

`A250898(∑[n+2]+4)`
-/

namespace A250901.P15281833793096146102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250901.P15281833793096146102

/-!
# A250902: Number of (4+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250902, there is no canonical definition to state claims against.
-/

/-! ## A250902.P13201551878739514894

`A250898(∑[n+3]+7)`
-/

namespace A250902.P13201551878739514894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250902.P13201551878739514894

/-! ## A250902.P8939928331644774519

`record[A250898(A056536(n+5)+3)]`
-/

namespace A250902.P8939928331644774519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A056536 (n + 5) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250902.P8939928331644774519

/-!
# A250903: Number of (5+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250903, there is no canonical definition to state claims against.
-/

/-! ## A250903.P714246374140358169

`A250898(∑[n+4]+11)`
-/

namespace A250903.P714246374140358169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A250903.P714246374140358169

/-!
# A250904: Number of (6+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250904, there is no canonical definition to state claims against.
-/

/-! ## A250904.P5383516032583310855

`A250898(A056115(n)+21)`
-/

namespace A250904.P5383516032583310855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A056115 n + 21).toNat

end

end A250904.P5383516032583310855

/-!
# A250905: Number of (7+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250905, there is no canonical definition to state claims against.
-/

/-! ## A250905.P12948910888874510821

`A250898(A056119(n)+28)`
-/

namespace A250905.P12948910888874510821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A056119 n + 28).toNat

end

end A250905.P12948910888874510821

/-!
# A250906: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A250906, there is no canonical definition to state claims against.
-/

/-! ## A250906.P11065640927620919668

`A250913((n+1)²+n²)`
-/

namespace A250906.P11065640927620919668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250913 ((n + 1) ^ 2 + n ^ 2)

end

end A250906.P11065640927620919668

/-!
# A250907: Number of (n+1) X (2+1) 0..2 arrays with no 2 X 2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A250907, there is no canonical definition to state claims against.
-/

/-! ## A250907.P822983422837698712

`A250913(∑[n+1]+2)`
-/

namespace A250907.P822983422837698712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250913 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250907.P822983422837698712

/-! ## A250907.P10566398913798810925

`record[A010054(n+1)*A250913(n+3)]`
-/

namespace A250907.P10566398913798810925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A250913 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250907.P10566398913798810925

/-! ## A250907.P7355420679925427115

`record[A250913(n+3)/A128412(n)]`
-/

namespace A250907.P7355420679925427115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250913 (n + 3) : ℚ) / (A128412 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250907.P7355420679925427115

/-!
# A250908: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A250908, there is no canonical definition to state claims against.
-/

/-! ## A250908.P13559196619353054509

`A250913(∑[n+2]+4)`
-/

namespace A250908.P13559196619353054509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250913 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250908.P13559196619353054509

/-!
# A250909: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A250909, there is no canonical definition to state claims against.
-/

/-! ## A250909.P12443299210177592948

`A250913(A145018(n+4))`
-/

namespace A250909.P12443299210177592948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250913 (A145018 (n + 4)).toNat

end

end A250909.P12443299210177592948

/-! ## A250909.P2804494445467838645

`A250913(∑[n+3]+n+4)`
-/

namespace A250909.P2804494445467838645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250913 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A250909.P2804494445467838645

/-!
# A250910: Number of (n+1)X(5+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A250910, there is no canonical definition to state claims against.
-/

/-! ## A250910.P13940569103740852328

`A250913(A155212(n)+13)`
-/

namespace A250910.P13940569103740852328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250913 (A155212 n + 13).toNat

end

end A250910.P13940569103740852328

/-! ## A250910.P11880277831685215797

`A250913(A046691(n+3))`
-/

namespace A250910.P11880277831685215797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250913 (A046691 (n + 3)).toNat

end

end A250910.P11880277831685215797

/-!
# A250911: Number of (n+1)X(6+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A250911, there is no canonical definition to state claims against.
-/

/-! ## A250911.P11178328139477191822

`A250913(A052905(n+2)+11)`
-/

namespace A250911.P11178328139477191822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250913 (A052905 (n + 2) + 11).toNat

end

end A250911.P11178328139477191822

/-! ## A250911.P15812226115012330105

`A250913(A052905(n+3))`
-/

namespace A250911.P15812226115012330105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250913 (A052905 (n + 3)).toNat

end

end A250911.P15812226115012330105

/-!
# A250912: Number of (n+1) X (7+1) 0..2 arrays with no 2 X 2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A250912, there is no canonical definition to state claims against.
-/

/-! ## A250912.P842195958841091158

`A250913(A052905(n+4)-1)`
-/

namespace A250912.P842195958841091158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250913 (A052905 (n + 4) - 1).toNat

end

end A250912.P842195958841091158

/-!
# A250914: E.g.f.: (18 - 17*cosh(x)) / (25 - 24*cosh(x)).

The programs for A250914, there is no canonical definition to state claims against.
-/

/-! ## A250914.P11980737385001027819

`A050352(2*n)`
-/

namespace A250914.P11980737385001027819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050352 (2 * n)

end

end A250914.P11980737385001027819

/-! ## A250914.P8090780627578069099

`ceil(A032033(2*n)/3)`
-/

namespace A250914.P8090780627578069099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032033 (2 * n) : ℚ) / 3⌉

end

end A250914.P8090780627578069099

/-! ## A250914.P3492053252700437611

`ceil(A201354(2*n)/4)`
-/

namespace A250914.P3492053252700437611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201354 (2 * n) : ℚ) / 4⌉

end

end A250914.P3492053252700437611

/-! ## A250914.P5364093957347608260

`ceil(A032183(1+n*2)/12)`
-/

namespace A250914.P5364093957347608260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032183 (1 + n * 2) : ℚ) / 12⌉

end

end A250914.P5364093957347608260

/-! ## A250914.P15869483843987490718

`record[A050352(floor(n/2^val(n+1, 2)))]`
-/

namespace A250914.P15869483843987490718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050352 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250914.P15869483843987490718

/-!
# A250915: E.g.f.: (32 - 31*cosh(x)) / (41 - 40*cosh(x)).

The programs for A250915, there is no canonical definition to state claims against.
-/

/-! ## A250915.P302829415845666234

`A050353(2*n)`
-/

namespace A250915.P302829415845666234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050353 (2 * n)

end

end A250915.P302829415845666234

/-! ## A250915.P16930650459605453674

`ceil(A094417(2*n)/4)`
-/

namespace A250915.P16930650459605453674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094417 (2 * n) : ℚ) / 4⌉

end

end A250915.P16930650459605453674

/-! ## A250915.P9818374613215336592

`record[A050353(ceil((n-1)/gcd(2, n)))]`
-/

namespace A250915.P9818374613215336592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050353 ⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250915.P9818374613215336592

/-! ## A250915.P15616746089915498249

`record[A050353(floor(n/2^val(n+1, 2)))]`
-/

namespace A250915.P15616746089915498249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050353 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250915.P15616746089915498249

/-! ## A250915.P9582662408959083716

`record[A050353(A254048(n))]`
-/

namespace A250915.P9582662408959083716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050353 (A254048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250915.P9582662408959083716

/-!
# A250916: Expansion of e.g.f. exp(C(x)^2 - 1) where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers, A000108.

The programs for A250916, there is no canonical definition to state claims against.
-/

/-! ## A250916.P5681488019198581331

`2*A003144(n*a(n-1))` with `a(0)=1`
-/

namespace A250916.P5681488019198581331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A003144 ((n : ℤ) * a (n - 1)).toNat

end

end A250916.P5681488019198581331

/-!
# A250917: Expansion of e.g.f. exp( x*C(x)^3 ) where C(x) = (1 - sqrt(1-4*x))/(2*x) is the g.f. of the Catalan numbers, A000108.

The programs for A250917, there is no canonical definition to state claims against.
-/

/-! ## A250917.P14161484677682846696

`A158611(A344605(n)+A135751(n))`
-/

namespace A250917.P14161484677682846696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A344605 n + A135751 n).toNat

end

end A250917.P14161484677682846696

/-!
# A250918: G.f. A(x) satisfies: 2*A(x) = 1 + A(x)^3/(1 + x*A(x)^3).

The programs for A250918, there is no canonical definition to state claims against.
-/

/-! ## A250918.P10612389635263559893

`A101402(A149961(n)-A285383(n+1))`
-/

namespace A250918.P10612389635263559893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A149961 n - A285383 (n + 1)).toNat

end

end A250918.P10612389635263559893

/-! ## A250918.P12702259365436676124

`A008615(A340329(n+1)+A086411(n+2))`
-/

namespace A250918.P12702259365436676124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A340329 (n + 1) + A086411 (n + 2)).toNat

end

end A250918.P12702259365436676124

/-! ## A250918.P2999381503287585254

`floor(1/(A238789(8*n+1)+n)*9^n)`
-/

namespace A250918.P2999381503287585254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A238789 (8 * n + 1) + (n : ℤ) : ℚ) * (9 ^ n : ℚ)⌋

end

end A250918.P2999381503287585254

/-!
# A250919: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A250919, there is no canonical definition to state claims against.
-/

/-! ## A250919.P2018905666435267550

`A250927((n+1)²+n²)`
-/

namespace A250919.P2018905666435267550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250927 ((n + 1) ^ 2 + n ^ 2)

end

end A250919.P2018905666435267550

/-!
# A250920: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A250920, the canonical program `A250920.P2876455666499368948` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250920 has offset 1).

The definition of A250920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250920.P2876455666499368948

`ogf((58-178x+245x^2-140x^3+36x^4)/(1-9x+23x^2-29x^3+16x^4-4x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A250920

/-- `ogf((58-178x+245x^2-140x^3+36x^4)/(1-9x+23x^2-29x^3+16x^4-4x^5))` -/
def P2876455666499368948.Spec : Prop :=
  ∀ n, P2876455666499368948.a n = A250920 (n + 1)

theorem P2876455666499368948.correct : P2876455666499368948.Spec := by
  intro n
  simp only [A250920, Nat.add_sub_cancel]

end A250920

/-! ## A250920.P5987989132478275972

`A250927(∑[n]+1)`
-/

namespace A250920.P5987989132478275972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250927 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250920.P5987989132478275972

namespace A250920

/-- `A250927(∑[n]+1)` -/
def P5987989132478275972.Spec : Prop :=
  ∀ n, P5987989132478275972.a n = A250920 (n + 1)

end A250920

/-! ## A250920.P15605909985334818119

`record[root(A250927(n+1), A230449(n))]`
-/

namespace A250920.P15605909985334818119
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250927 (n + 1) : ℝ) ^ (1 / (A230449 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250920.P15605909985334818119

namespace A250920

/-- `record[root(A250927(n+1), A230449(n))]` -/
def P15605909985334818119.Spec : Prop :=
  ∀ n, P15605909985334818119.a n = (A250920 (n + 1) : ℝ)

end A250920

/-! ## A250920.P9352795604463967713

`record[gcd(A002262(n), A250927(n+1))]`
-/

namespace A250920.P9352795604463967713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A250927 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250920.P9352795604463967713

namespace A250920

/-- `record[gcd(A002262(n), A250927(n+1))]` -/
def P9352795604463967713.Spec : Prop :=
  ∀ n, (P9352795604463967713.a n : ℤ) = A250920 (n + 1)

end A250920

/-! ## A250920.P9390892795966113084

`record[root(A250927(n+1), A002260(n+1))]`
-/

namespace A250920.P9390892795966113084
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250927 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250920.P9390892795966113084

namespace A250920

/-- `record[root(A250927(n+1), A002260(n+1))]` -/
def P9390892795966113084.Spec : Prop :=
  ∀ n, P9390892795966113084.a n = (A250920 (n + 1) : ℝ)

end A250920

/-!
# A250921: Number of (n+1)X(2+1) 0..2 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A250921, there is no canonical definition to state claims against.
-/

/-! ## A250921.P13080454009228764487

`A250927(∑[n+1]+2)`
-/

namespace A250921.P13080454009228764487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250927 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250921.P13080454009228764487

/-! ## A250921.P6084256907870998704

`record[gcd(A002262(n), A250927(n+2))]`
-/

namespace A250921.P6084256907870998704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A250927 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250921.P6084256907870998704

/-! ## A250921.P17551418774785038226

`record[root(A250927(n+2), A002260(n+1))]`
-/

namespace A250921.P17551418774785038226
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250927 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250921.P17551418774785038226

/-! ## A250921.P14192736209771224683

`record[A250927(Δ[A003453(n+5)])]`
-/

namespace A250921.P14192736209771224683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250927 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250921.P14192736209771224683

/-! ## A250921.P15627677234835907095

`record[A250927(record[A056943(n+4)])]`
-/

namespace A250921.P15627677234835907095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250927 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250921.P15627677234835907095

/-!
# A250922: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A250922, there is no canonical definition to state claims against.
-/

/-! ## A250922.P2167904088494910093

`A250927(∑[n+2]+4)`
-/

namespace A250922.P2167904088494910093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250927 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250922.P2167904088494910093

/-!
# A250923: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A250923, there is no canonical definition to state claims against.
-/

/-! ## A250923.P7594841454155696456

`A250927(∑[n+3]+7)`
-/

namespace A250923.P7594841454155696456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250927 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250923.P7594841454155696456

/-!
# A250924: Number of (n+1)X(5+1) 0..2 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A250924, there is no canonical definition to state claims against.
-/

/-! ## A250924.P3672230595909198946

`A250927(A374005(n+1))`
-/

namespace A250924.P3672230595909198946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250927 (A374005 (n + 1)).toNat

end

end A250924.P3672230595909198946

/-!
# A250925: Number of (n+1) X (6+1) 0..2 arrays with no 2 X 2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A250925, there is no canonical definition to state claims against.
-/

/-! ## A250925.P6142150781909767939

`A250927(A374007(n+1))`
-/

namespace A250925.P6142150781909767939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250927 (A374007 (n + 1)).toNat

end

end A250925.P6142150781909767939

/-!
# A250928: Number of (n+1) X (1+1) 0..3 arrays with no 2 X 2 subblock having a diagonal absolute difference less than its antidiagonal absolute difference.

The programs for A250928, there is no canonical definition to state claims against.
-/

/-! ## A250928.P3651207073078305657

`ogf((164-316x+536x^2-528x^3)/(1-12x+23x^2-37x^3+33x^4))`
-/

namespace A250928.P3651207073078305657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [164, -316, 536, -528] [1, -12, 23, -37, 33] n

end

end A250928.P3651207073078305657

/-! ## A250928.P2842434400891384315

`A250935(∑[n]+1)`
-/

namespace A250928.P2842434400891384315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250935 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250928.P2842434400891384315

/-! ## A250928.P4046273291856522285

`record[gcd(A053616(n), A250935(n+1))]`
-/

namespace A250928.P4046273291856522285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053616 n) (A250935 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250928.P4046273291856522285

/-!
# A250929: Number of (n+1)X(2+1) 0..3 arrays with no 2X2 subblock having a diagonal absolute difference less than its antidiagonal absolute difference.

The programs for A250929, there is no canonical definition to state claims against.
-/

/-! ## A250929.P15132225637515430119

`A250935(∑[n+1]+2)`
-/

namespace A250929.P15132225637515430119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250935 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250929.P15132225637515430119

/-! ## A250929.P16052281611548421047

`record[gcd(A053616(n), A250935(n+2))]`
-/

namespace A250929.P16052281611548421047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053616 n) (A250935 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250929.P16052281611548421047

/-! ## A250929.P8959919071726060344

`record[A250935(Δ[A003453(n+5)])]`
-/

namespace A250929.P8959919071726060344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250935 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250929.P8959919071726060344

/-!
# A250930: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having a diagonal absolute difference less than its antidiagonal absolute difference.

The programs for A250930, there is no canonical definition to state claims against.
-/

/-! ## A250930.P14831615477297717332

`A250935(∑[n+2]+4)`
-/

namespace A250930.P14831615477297717332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250935 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250930.P14831615477297717332

/-!
# A250931: Number of (n+1)X(4+1) 0..3 arrays with no 2X2 subblock having a diagonal absolute difference less than its antidiagonal absolute difference.

The programs for A250931, there is no canonical definition to state claims against.
-/

/-! ## A250931.P9811213581554827121

`A250935(A167614(n+2)+1)`
-/

namespace A250931.P9811213581554827121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250935 (A167614 (n + 2) + 1).toNat

end

end A250931.P9811213581554827121

/-! ## A250931.P13703973169618069244

`A250935(∑[n+4]+3)`
-/

namespace A250931.P13703973169618069244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250935 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250931.P13703973169618069244

/-!
# A250933: Number of (n+1)X(6+1) 0..3 arrays with no 2X2 subblock having a diagonal absolute difference less than its antidiagonal absolute difference.

The programs for A250933, there is no canonical definition to state claims against.
-/

/-! ## A250933.P10371737631838371250

`A250935(A167499(n+4)+1)`
-/

namespace A250933.P10371737631838371250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250935 (A167499 (n + 4) + 1).toNat

end

end A250933.P10371737631838371250

/-! ## A250933.P1471244312892941627

`A250935(eq[5, A193592(n)])`
-/

namespace A250933.P1471244312892941627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250933.P1471244312892941627

/-!
# A250936: Number of (n+1)X(2+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250936, there is no canonical definition to state claims against.
-/

/-! ## A250936.P5912971467628436491

`A250942(∑[2+n])`
-/

namespace A250936.P5912971467628436491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250936.P5912971467628436491

/-! ## A250936.P16867705950375383345

`record[A250942(abs(A201163(n)))]`
-/

namespace A250936.P16867705950375383345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250936.P16867705950375383345

/-! ## A250936.P1307810848914999476

`record[A250942(A198455(n+1))]`
-/

namespace A250936.P1307810848914999476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250936.P1307810848914999476

/-! ## A250936.P9997572145085620365

`record[A250942(Δ[A003453(n+5)])]`
-/

namespace A250936.P9997572145085620365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250936.P9997572145085620365

/-!
# A250937: Number of (n+1)X(3+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250937, there is no canonical definition to state claims against.
-/

/-! ## A250937.P5360842982048045095

`A250942(∑[n+3]+1)`
-/

namespace A250937.P5360842982048045095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250937.P5360842982048045095

/-!
# A250938: Number of (n+1)X(4+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250938, there is no canonical definition to state claims against.
-/

/-! ## A250938.P15717331412484544198

`A250942(∑[n+4]+3)`
-/

namespace A250938.P15717331412484544198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250938.P15717331412484544198

/-!
# A250939: Number of (n+1)X(5+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250939, there is no canonical definition to state claims against.
-/

/-! ## A250939.P17235901994129854523

`A250942(∑[n+5]+6)`
-/

namespace A250939.P17235901994129854523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250939.P17235901994129854523

/-!
# A250940: Number of (n+1)X(6+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250940, there is no canonical definition to state claims against.
-/

/-! ## A250940.P3894011440656523339

`A250942(A052905(n+3))`
-/

namespace A250940.P3894011440656523339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (A052905 (n + 3)).toNat

end

end A250940.P3894011440656523339

/-!
# A250941: Number of (n+1)X(7+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250941, there is no canonical definition to state claims against.
-/

/-! ## A250941.P12691374285914202111

`A250942(A055999(n+4))`
-/

namespace A250941.P12691374285914202111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (A055999 (n + 4)).toNat

end

end A250941.P12691374285914202111

/-!
# A250943: Number of (1+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250943, the canonical program `A250943.P6659330848542624855` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250943 has offset 1).

The definition of A250943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250943.P6659330848542624855

`ogf((37-67x-109x^2+138x^3+108x^4)/(1-6x+6x^2+15x^3-14x^4-12x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A250943

/-- `ogf((37-67x-109x^2+138x^3+108x^4)/(1-6x+6x^2+15x^3-14x^4-12x^5))` -/
def P6659330848542624855.Spec : Prop :=
  ∀ n, P6659330848542624855.a n = A250943 (n + 1)

theorem P6659330848542624855.correct : P6659330848542624855.Spec := by
  intro n
  simp only [A250943, Nat.add_sub_cancel]

end A250943

/-! ## A250943.P11578771317921150096

`A250942(∑[n]+1)`
-/

namespace A250943.P11578771317921150096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250943.P11578771317921150096

namespace A250943

/-- `A250942(∑[n]+1)` -/
def P11578771317921150096.Spec : Prop :=
  ∀ n, P11578771317921150096.a n = A250943 (n + 1)

end A250943

/-! ## A250943.P14134679819409765074

`record[A250942(∑[A057979(n)])]`
-/

namespace A250943.P14134679819409765074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250943.P14134679819409765074

namespace A250943

/-- `record[A250942(∑[A057979(n)])]` -/
def P14134679819409765074.Spec : Prop :=
  ∀ n, P14134679819409765074.a n = A250943 (n + 1)

end A250943

/-! ## A250943.P1989966679439417227

`record[A250942(A114091(n+1))]`
-/

namespace A250943.P1989966679439417227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250943.P1989966679439417227

namespace A250943

/-- `record[A250942(A114091(n+1))]` -/
def P1989966679439417227.Spec : Prop :=
  ∀ n, P1989966679439417227.a n = A250943 (n + 1)

end A250943

/-!
# A250944: Number of (2+1)X(n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250944, there is no canonical definition to state claims against.
-/

/-! ## A250944.P1298294796118382274

`A250942(∑[n+1]+2)`
-/

namespace A250944.P1298294796118382274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250944.P1298294796118382274

/-! ## A250944.P4753702585076729977

`record[A250942(n+3)/A039807(n)]`
-/

namespace A250944.P4753702585076729977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250942 (n + 3) : ℚ) / (A039807 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250944.P4753702585076729977

/-! ## A250944.P3554149461605127175

`record[root(A250942(n+3), A248975(n))]`
-/

namespace A250944.P3554149461605127175
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250942 (n + 3) : ℝ) ^ (1 / (A248975 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250944.P3554149461605127175

/-!
# A250945: Number of (3+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250945, there is no canonical definition to state claims against.
-/

/-! ## A250945.P8908936231084962504

`A250942(∑[n+2]+4)`
-/

namespace A250945.P8908936231084962504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250945.P8908936231084962504

/-!
# A250946: Number of (4+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250946, there is no canonical definition to state claims against.
-/

/-! ## A250946.P10365135060846792132

`A250942(A141214(n)+7)`
-/

namespace A250946.P10365135060846792132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (A141214 n + 7).toNat

end

end A250946.P10365135060846792132

/-!
# A250947: Number of (5+1)X(n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250947, there is no canonical definition to state claims against.
-/

/-! ## A250947.P15303394442174235167

`A250942(∑[n+4]+11)`
-/

namespace A250947.P15303394442174235167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A250947.P15303394442174235167

/-!
# A250948: Number of (6+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250948, there is no canonical definition to state claims against.
-/

/-! ## A250948.P553494577686120156

`A250942(A166136(n+4))`
-/

namespace A250948.P553494577686120156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (A166136 (n + 4)).toNat

end

end A250948.P553494577686120156

/-!
# A250949: Number of (7+1)X(n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250949, there is no canonical definition to state claims against.
-/

/-! ## A250949.P14517715728755799008

`A250942(A167487(n+5))`
-/

namespace A250949.P14517715728755799008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250942 (A167487 (n + 5)).toNat

end

end A250949.P14517715728755799008

/-!
# A250950: Number of (n+1)X(n+1) 0..1 arrays with no 2X2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A250950, there is no canonical definition to state claims against.
-/

/-! ## A250950.P13884351935736510484

`A250956((n+1)²+n²)`
-/

namespace A250950.P13884351935736510484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250956 ((n + 1) ^ 2 + n ^ 2)

end

end A250950.P13884351935736510484

/-!
# A250951: Number of (n+1) X (3+1) 0..1 arrays with no 2 X 2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A250951, there is no canonical definition to state claims against.
-/

/-! ## A250951.P17902728285731527695

`ogf((209-391x-128x^2)/(1-15x+24x^2+8x^3))`
-/

namespace A250951.P17902728285731527695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [209, -391, -128] [1, -15, 24, 8] n

end

end A250951.P17902728285731527695

/-! ## A250951.P7276123166491270329

`A250956(∑[n+2]+4)`
-/

namespace A250951.P7276123166491270329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250956 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250951.P7276123166491270329

/-!
# A250952: Number of (n+1) X (4+1) 0..1 arrays with no 2 X 2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A250952, there is no canonical definition to state claims against.
-/

/-! ## A250952.P13068277708245616602

`A250956(A052905(n)+9)`
-/

namespace A250952.P13068277708245616602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250956 (A052905 n + 9).toNat

end

end A250952.P13068277708245616602

/-! ## A250952.P9102326936082561001

`A250956(A374004(n+1))`
-/

namespace A250952.P9102326936082561001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250956 (A374004 (n + 1)).toNat

end

end A250952.P9102326936082561001

/-!
# A250953: Number of (n+1)X(5+1) 0..1 arrays with no 2X2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A250953, there is no canonical definition to state claims against.
-/

/-! ## A250953.P17348658869758686282

`A250956(A167499(n+3))`
-/

namespace A250953.P17348658869758686282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250956 (A167499 (n + 3)).toNat

end

end A250953.P17348658869758686282

/-! ## A250953.P8526742219040777659

`A250956(Δ[A264443(n)])`
-/

namespace A250953.P8526742219040777659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250956 (f1 (n + 1) - f1 n).toNat

end

end A250953.P8526742219040777659

/-!
# A250954: Number of (n+1)X(6+1) 0..1 arrays with no 2X2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A250954, there is no canonical definition to state claims against.
-/

/-! ## A250954.P1735588167154250819

`A250956(A167499(n+4)+1)`
-/

namespace A250954.P1735588167154250819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250956 (A167499 (n + 4) + 1).toNat

end

end A250954.P1735588167154250819

/-! ## A250954.P4883442581057635421

`A250956(A374007(n+1))`
-/

namespace A250954.P4883442581057635421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250956 (A374007 (n + 1)).toNat

end

end A250954.P4883442581057635421

/-!
# A250955: Number of (n+1) X (7+1) 0..1 arrays with no 2 X 2 subblock having its maximum diagonal element less than its minimum antidiagonal element.

The programs for A250955, there is no canonical definition to state claims against.
-/

/-! ## A250955.P16948108086971261810

`A250956(A000124(n+6)+6)`
-/

namespace A250955.P16948108086971261810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250956 (A000124 (n + 6) + 6).toNat

end

end A250955.P16948108086971261810

/-! ## A250955.P8398814972577089910

`A250956(A374008(n+1))`
-/

namespace A250955.P8398814972577089910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250956 (A374008 (n + 1)).toNat

end

end A250955.P8398814972577089910

/-!
# A250957: Number of (n+1)X(n+1) 0..3 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A250957, there is no canonical definition to state claims against.
-/

/-! ## A250957.P4187084575118233075

`A250965(4*∑[n]+1)`
-/

namespace A250957.P4187084575118233075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250965 (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A250957.P4187084575118233075

/-!
# A250958: Number of (n+1) X (1+1) 0..3 arrays with no 2 X 2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A250958, there is no canonical definition to state claims against.
-/

/-! ## A250958.P2269161976112623569

`A250965(∑[n]+1)`
-/

namespace A250958.P2269161976112623569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250965 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250958.P2269161976112623569

/-! ## A250958.P10302034050126418512

`record[A010054(n)*A250965(n+1)]`
-/

namespace A250958.P10302034050126418512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250958.P10302034050126418512

/-! ## A250958.P17706962762862387043

`record[A250965(n+1)/A015112(n)]`
-/

namespace A250958.P17706962762862387043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250965 (n + 1) : ℚ) / (A015112 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250958.P17706962762862387043

/-! ## A250958.P16167433319750247795

`record[A250965(n+1)/A322220(n)]`
-/

namespace A250958.P16167433319750247795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250965 (n + 1) : ℚ) / (A322220 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250958.P16167433319750247795

/-! ## A250958.P14321728321311406045

`record[gcd(A002262(n), A250965(n+1))]`
-/

namespace A250958.P14321728321311406045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A250965 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250958.P14321728321311406045

/-!
# A250959: Number of (n+1)X(2+1) 0..3 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A250959, there is no canonical definition to state claims against.
-/

/-! ## A250959.P8286801690425725412

`A250965(∑[n+1]+2)`
-/

namespace A250959.P8286801690425725412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250965 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250959.P8286801690425725412

/-! ## A250959.P11216704263860427472

`record[A010054(n)*A250965(n+2)]`
-/

namespace A250959.P11216704263860427472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250959.P11216704263860427472

/-! ## A250959.P9653801083267823851

`record[gcd(A002262(n), A250965(n+2))]`
-/

namespace A250959.P9653801083267823851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A250965 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250959.P9653801083267823851

/-! ## A250959.P617647873294801151

`record[A250965(lt[A322220(n), n])]`
-/

namespace A250959.P617647873294801151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322220 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250965 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250959.P617647873294801151

/-! ## A250959.P7170961408660851483

`record[A250965(A000096(∏{p}[n+1, #^val(n+1, #²)]))]`
-/

namespace A250959.P7170961408660851483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250965 (A000096 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250959.P7170961408660851483

/-!
# A250960: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A250960, there is no canonical definition to state claims against.
-/

/-! ## A250960.P12138778257245853165

`A250965(∑[n+2]+4)`
-/

namespace A250960.P12138778257245853165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250965 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250960.P12138778257245853165

/-!
# A250961: Number of (n+1)X(4+1) 0..3 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A250961, there is no canonical definition to state claims against.
-/

/-! ## A250961.P10129650864265113214

`A250965(∑[n+3]+7)`
-/

namespace A250961.P10129650864265113214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250965 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250961.P10129650864265113214

/-!
# A250962: Number of (n+1)X(5+1) 0..3 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A250962, there is no canonical definition to state claims against.
-/

/-! ## A250962.P2351071585139809944

`A250965(A056115(n)+11)`
-/

namespace A250962.P2351071585139809944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250965 (A056115 n + 11).toNat

end

end A250962.P2351071585139809944

/-!
# A250964: Number of (n+1)X(7+1) 0..3 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A250964, there is no canonical definition to state claims against.
-/

/-! ## A250964.P12336500684750742834

`A250965(A000124(n+7)-7)`
-/

namespace A250964.P12336500684750742834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250965 (A000124 (n + 7) - 7).toNat

end

end A250964.P12336500684750742834

/-!
# A250966: Number of (n+1)X(n+1) 0..1 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A250966, there is no canonical definition to state claims against.
-/

/-! ## A250966.P7758238681620814269

`A250973(4*∑[n]+1)`
-/

namespace A250966.P7758238681620814269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250973 (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A250966.P7758238681620814269

/-! ## A250966.P10052349023876422746

`record[gcd(A049581(n), A250973(n+1))]`
-/

namespace A250966.P10052349023876422746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A250973 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250966.P10052349023876422746

/-!
# A250967: Number of (n+1) X (2+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A250967, the canonical program `A250967.P2207065654884198302` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250967 has offset 1).

The definition of A250967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250967.P2207065654884198302

`ogf((49-84x+118x^2-108x^3+24x^4)/(1-8x+13x^2-17x^3+14x^4-3x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A250967

/-- `ogf((49-84x+118x^2-108x^3+24x^4)/(1-8x+13x^2-17x^3+14x^4-3x^5))` -/
def P2207065654884198302.Spec : Prop :=
  ∀ n, P2207065654884198302.a n = A250967 (n + 1)

theorem P2207065654884198302.correct : P2207065654884198302.Spec := by
  intro n
  simp only [A250967, Nat.add_sub_cancel]

end A250967

/-! ## A250967.P13550822209027303919

`A250973(∑[n+1]+2)`
-/

namespace A250967.P13550822209027303919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250973 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250967.P13550822209027303919

namespace A250967

/-- `A250973(∑[n+1]+2)` -/
def P13550822209027303919.Spec : Prop :=
  ∀ n, P13550822209027303919.a n = A250967 (n + 1)

end A250967

/-! ## A250967.P8539748527480792980

`record[root(A250973(n+2), A002260(n+1))]`
-/

namespace A250967.P8539748527480792980
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250973 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250967.P8539748527480792980

namespace A250967

/-- `record[root(A250973(n+2), A002260(n+1))]` -/
def P8539748527480792980.Spec : Prop :=
  ∀ n, P8539748527480792980.a n = (A250967 (n + 1) : ℝ)

end A250967

/-! ## A250967.P5373533146396176289

`record[gcd(A250973(n+3), A323128(n+1))]`
-/

namespace A250967.P5373533146396176289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A250973 (n + 3)) (A323128 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250967.P5373533146396176289

namespace A250967

/-- `record[gcd(A250973(n+3), A323128(n+1))]` -/
def P5373533146396176289.Spec : Prop :=
  ∀ n, (P5373533146396176289.a n : ℤ) = A250967 (n + 1)

end A250967

/-! ## A250967.P1973621173592829347

`record[A250973(Δ[A003453(n+5)])]`
-/

namespace A250967.P1973621173592829347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250973 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250967.P1973621173592829347

namespace A250967

/-- `record[A250973(Δ[A003453(n+5)])]` -/
def P1973621173592829347.Spec : Prop :=
  ∀ n, P1973621173592829347.a n = A250967 (n + 1)

end A250967

/-!
# A250968: Number of (n+1)X(3+1) 0..1 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A250968, there is no canonical definition to state claims against.
-/

/-! ## A250968.P11355034907402689027

`A250973(∑[n+2]+4)`
-/

namespace A250968.P11355034907402689027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250973 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250968.P11355034907402689027

/-!
# A250969: Number of (n+1)X(4+1) 0..1 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A250969, there is no canonical definition to state claims against.
-/

/-! ## A250969.P17962482229840815103

`A250973(A374004(n+1))`
-/

namespace A250969.P17962482229840815103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250973 (A374004 (n + 1)).toNat

end

end A250969.P17962482229840815103

/-! ## A250969.P17664843622716159862

`A250973(A141214(n+1))`
-/

namespace A250969.P17664843622716159862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250973 (A141214 (n + 1)).toNat

end

end A250969.P17664843622716159862

/-!
# A250970: Number of (n+1)X(5+1) 0..1 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A250970, there is no canonical definition to state claims against.
-/

/-! ## A250970.P12369293584781114717

`A250973(A374005(n+1))`
-/

namespace A250970.P12369293584781114717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250973 (A374005 (n + 1)).toNat

end

end A250970.P12369293584781114717

/-! ## A250970.P5804042179546251971

`A250973(Δ[A264443(n)])`
-/

namespace A250970.P5804042179546251971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250973 (f1 (n + 1) - f1 n).toNat

end

end A250970.P5804042179546251971

/-!
# A250971: Number of (n+1)X(6+1) 0..1 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A250971, there is no canonical definition to state claims against.
-/

/-! ## A250971.P14797234921935914511

`A250973(A374007(n+1))`
-/

namespace A250971.P14797234921935914511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250973 (A374007 (n + 1)).toNat

end

end A250971.P14797234921935914511

/-!
# A250972: Number of (n+1)X(7+1) 0..1 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A250972, there is no canonical definition to state claims against.
-/

/-! ## A250972.P9368749948130393513

`A250973(A374008(n+1))`
-/

namespace A250972.P9368749948130393513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250973 (A374008 (n + 1)).toNat

end

end A250972.P9368749948130393513

/-!
# A250973: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A250973, there is no canonical definition to state claims against.
-/

/-! ## A250973.P10151159746401811938

`A251228(n+1)+A082117(A047707(n))`
-/

namespace A250973.P10151159746401811938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (n + 1) + A082117 (A047707 n).toNat

end

end A250973.P10151159746401811938

/-! ## A250973.P7890874542217098526

`A251228(n+1)+A230427(A007696(n))`
-/

namespace A250973.P7890874542217098526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251228 (n + 1) + A230427 (A007696 n).toNat

end

end A250973.P7890874542217098526

/-!
# A250974: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A250974, there is no canonical definition to state claims against.
-/

/-! ## A250974.P15885450773627636314

`A250982((n+1)²+n²)`
-/

namespace A250974.P15885450773627636314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250982 ((n + 1) ^ 2 + n ^ 2)

end

end A250974.P15885450773627636314

/-!
# A250975: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A250975, the canonical program `A250975.P601089595799035481` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250975 has offset 1).

The definition of A250975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250975.P601089595799035481

`ogf((71-77x+111x^2-53x^3+9x^4)/(1-9x+10x^2-13x^3+6x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A250975

/-- `ogf((71-77x+111x^2-53x^3+9x^4)/(1-9x+10x^2-13x^3+6x^4-x^5))` -/
def P601089595799035481.Spec : Prop :=
  ∀ n, P601089595799035481.a n = A250975 (n + 1)

theorem P601089595799035481.correct : P601089595799035481.Spec := by
  intro n
  simp only [A250975, Nat.add_sub_cancel]

end A250975

/-! ## A250975.P12358154790357919329

`A250982(∑[n]+1)`
-/

namespace A250975.P12358154790357919329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250982 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250975.P12358154790357919329

namespace A250975

/-- `A250982(∑[n]+1)` -/
def P12358154790357919329.Spec : Prop :=
  ∀ n, P12358154790357919329.a n = A250975 (n + 1)

end A250975

/-! ## A250975.P9290513863151099496

`record[A250982(A249742(n+1))]`
-/

namespace A250975.P9290513863151099496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250982 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250975.P9290513863151099496

namespace A250975

/-- `record[A250982(A249742(n+1))]` -/
def P9290513863151099496.Spec : Prop :=
  ∀ n, P9290513863151099496.a n = A250975 (n + 1)

end A250975

/-! ## A250975.P532026044612619970

`record[A010054(n)*A250982(n+1)]`
-/

namespace A250975.P532026044612619970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250975.P532026044612619970

namespace A250975

/-- `record[A010054(n)*A250982(n+1)]` -/
def P532026044612619970.Spec : Prop :=
  ∀ n, P532026044612619970.a n = A250975 (n + 1)

end A250975

/-! ## A250975.P8237670876975291993

`record[root(A250982(n+1), A033282(n+3))]`
-/

namespace A250975.P8237670876975291993
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250982 (n + 1) : ℝ) ^ (1 / (A033282 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250975.P8237670876975291993

namespace A250975

/-- `record[root(A250982(n+1), A033282(n+3))]` -/
def P8237670876975291993.Spec : Prop :=
  ∀ n, P8237670876975291993.a n = (A250975 (n + 1) : ℝ)

end A250975

/-!
# A250976: Number of (n+1)X(2+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A250976, there is no canonical definition to state claims against.
-/

/-! ## A250976.P2102253926028215837

`A250982(∑[n+1]+2)`
-/

namespace A250976.P2102253926028215837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250982 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250976.P2102253926028215837

/-! ## A250976.P5859864406067909366

`record[A010054(n)*A250982(n+2)]`
-/

namespace A250976.P5859864406067909366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250976.P5859864406067909366

/-! ## A250976.P7158113223364130769

`record[A250982(Δ[A003453(n+5)])]`
-/

namespace A250976.P7158113223364130769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250982 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250976.P7158113223364130769

/-!
# A250977: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A250977, there is no canonical definition to state claims against.
-/

/-! ## A250977.P6908561507490522234

`A250982(∑[n+2]+4)`
-/

namespace A250977.P6908561507490522234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250982 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250977.P6908561507490522234

/-!
# A250978: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A250978, there is no canonical definition to state claims against.
-/

/-! ## A250978.P5639144239685737857

`A250982(A055999(n)+10)`
-/

namespace A250978.P5639144239685737857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250982 (A055999 n + 10).toNat

end

end A250978.P5639144239685737857

/-! ## A250978.P17126438386753857383

`A250982(A141214(n+1))`
-/

namespace A250978.P17126438386753857383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250982 (A141214 (n + 1)).toNat

end

end A250978.P17126438386753857383

/-!
# A250979: Number of (n+1) X (5+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements less than the absolute difference of its antidiagonal elements.

The programs for A250979, there is no canonical definition to state claims against.
-/

/-! ## A250979.P550120588691629760

`A250982(A167614(n+3)+2)`
-/

namespace A250979.P550120588691629760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250982 (A167614 (n + 3) + 2).toNat

end

end A250979.P550120588691629760

/-! ## A250979.P5139913567596805829

`A250982(A056115(n)+11)`
-/

namespace A250979.P5139913567596805829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250982 (A056115 n + 11).toNat

end

end A250979.P5139913567596805829

/-!
# A250983: First differences of A094589.

The programs for A250983, there is no canonical definition to state claims against.
-/

/-! ## A250983.P12608686116873887709

`Δ[A094589(1+n)]`
-/

namespace A250983.P12608686116873887709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094589 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250983.P12608686116873887709

/-! ## A250983.P3748073391235884815

`Δ[record[A094589(A344180(n))]]`
-/

namespace A250983.P3748073391235884815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094589 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250983.P3748073391235884815

/-! ## A250983.P8654430812788190330

`A094589(n+2)-A094589(n+1)`
-/

namespace A250983.P8654430812788190330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094589 (n + 2) - A094589 (n + 1)

end

end A250983.P8654430812788190330

/-! ## A250983.P16777766878690540325

`Δ[record[A094589(A154958(n))]]`
-/

namespace A250983.P16777766878690540325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094589 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250983.P16777766878690540325

/-! ## A250983.P13921504732935519573

`Δ[record[A094589(A141256(n))]]`
-/

namespace A250983.P13921504732935519573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094589 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250983.P13921504732935519573

/-! ## A250983.P7064632692964312814

`Δ[record[A094589(A331886(n))]]`
-/

namespace A250983.P7064632692964312814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094589 (A331886 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250983.P7064632692964312814

/-!
# A250984: Record values in A247190.

The programs for A250984, there is no canonical definition to state claims against.
-/

/-! ## A250984.P13061998351493193556

`record[A247190(n+3)]`
-/

namespace A250984.P13061998351493193556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247190 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250984.P13061998351493193556

/-! ## A250984.P15887053902158495588

`A247190(A250985(n+1))`
-/

namespace A250984.P15887053902158495588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247190 (A250985 (n + 1)).toNat

end

end A250984.P15887053902158495588

/-!
# A250986: Number of (n+1)X(n+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250986, there is no canonical definition to state claims against.
-/

/-! ## A250986.P1568455975267233791

`A250994(∑[4*n]+1)`
-/

namespace A250986.P1568455975267233791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250986.P1568455975267233791

/-! ## A250986.P4710714294573790250

`record[A250994(Δ[A235355(n)])]`
-/

namespace A250986.P4710714294573790250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250986.P4710714294573790250

/-! ## A250986.P4493568666950830209

`record[A250994(A286145(n)+1)]`
-/

namespace A250986.P4493568666950830209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A286145 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250986.P4493568666950830209

/-! ## A250986.P11232722803159318596

`record[A003982(n)*A250994(n+1)]`
-/

namespace A250986.P11232722803159318596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A250994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250986.P11232722803159318596

/-!
# A250987: Number of (n+1) X (1+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250987, the canonical program `A250987.P6650806411397819807` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250987 has offset 1).

The definition of A250987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250987.P6650806411397819807

`ogf((40-82x-56x^2+77x^3+56x^4+9x^5)/(1-6x+7x^2+8x^3-7x^4-6x^5-x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A250987

/-- `ogf((40-82x-56x^2+77x^3+56x^4+9x^5)/(1-6x+7x^2+8x^3-7x^4-6x^5-x^6))` -/
def P6650806411397819807.Spec : Prop :=
  ∀ n, P6650806411397819807.a n = A250987 (n + 1)

theorem P6650806411397819807.correct : P6650806411397819807.Spec := by
  intro n
  simp only [A250987, Nat.add_sub_cancel]

end A250987

/-! ## A250987.P13657416887130002301

`A250994(∑[1+n])`
-/

namespace A250987.P13657416887130002301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250987.P13657416887130002301

namespace A250987

/-- `A250994(∑[1+n])` -/
def P13657416887130002301.Spec : Prop :=
  ∀ n, P13657416887130002301.a n = A250987 (n + 1)

end A250987

/-! ## A250987.P16835857328610151128

`record[A250994(A130270(n+1))]`
-/

namespace A250987.P16835857328610151128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250987.P16835857328610151128

namespace A250987

/-- `record[A250994(A130270(n+1))]` -/
def P16835857328610151128.Spec : Prop :=
  ∀ n, P16835857328610151128.a n = A250987 (n + 1)

end A250987

/-! ## A250987.P18177313107570706436

`record[A023531(n)*A250994(n+1)]`
-/

namespace A250987.P18177313107570706436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A250994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250987.P18177313107570706436

namespace A250987

/-- `record[A023531(n)*A250994(n+1)]` -/
def P18177313107570706436.Spec : Prop :=
  ∀ n, P18177313107570706436.a n = A250987 (n + 1)

end A250987

/-! ## A250987.P16736109582812628886

`record[A103452(n)*A250994(n+1)]`
-/

namespace A250987.P16736109582812628886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A250994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250987.P16736109582812628886

namespace A250987

/-- `record[A103452(n)*A250994(n+1)]` -/
def P16736109582812628886.Spec : Prop :=
  ∀ n, P16736109582812628886.a n = A250987 (n + 1)

end A250987

/-!
# A250988: Number of (n+1)X(2+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250988, there is no canonical definition to state claims against.
-/

/-! ## A250988.P3593169468171422013

`A250994(∑[2+n])`
-/

namespace A250988.P3593169468171422013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250988.P3593169468171422013

/-!
# A250989: Number of (n+1)X(3+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250989, there is no canonical definition to state claims against.
-/

/-! ## A250989.P7647137032674521968

`A250994(∑[n+3]+1)`
-/

namespace A250989.P7647137032674521968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250989.P7647137032674521968

/-! ## A250989.P14980331072783591884

`record[A250994(A198464(n+1))]`
-/

namespace A250989.P14980331072783591884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250989.P14980331072783591884

/-!
# A250990: Number of (n+1)X(4+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250990, there is no canonical definition to state claims against.
-/

/-! ## A250990.P9618044135960744737

`A250994(∑[n+4]+3)`
-/

namespace A250990.P9618044135960744737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250990.P9618044135960744737

/-! ## A250990.P5588316847712123413

`record[A250994(A141214(∑[(-1)^(n%3)]))]`
-/

namespace A250990.P5588316847712123413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A141214 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250990.P5588316847712123413

/-!
# A250991: Number of (n+1)X(5+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250991, there is no canonical definition to state claims against.
-/

/-! ## A250991.P17746889662489380566

`A250994(∑[n+5]+6)`
-/

namespace A250991.P17746889662489380566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250991.P17746889662489380566

/-!
# A250992: Number of (n+1)X(6+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250992, there is no canonical definition to state claims against.
-/

/-! ## A250992.P2829187005743157893

`A250994(A052905(n+3))`
-/

namespace A250992.P2829187005743157893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A052905 (n + 3)).toNat

end

end A250992.P2829187005743157893

/-!
# A250993: Number of (n+1)X(7+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250993, there is no canonical definition to state claims against.
-/

/-! ## A250993.P2619839383729188920

`A250994(A055999(n+4))`
-/

namespace A250993.P2619839383729188920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A055999 (n + 4)).toNat

end

end A250993.P2619839383729188920

/-!
# A250995: Number of (1+1) X (n+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250995, the canonical program `A250995.P16026508920375765628` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250995 has offset 1).

The definition of A250995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250995.P16026508920375765628

`ogf((40-71x-88x^2+146x^3+94x^4-48x^5-27x^6)/(1-6x+7x^2+12x^3-15x^4-11x^5+5x^6+3x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A250995

/-- `ogf((40-71x-88x^2+146x^3+94x^4-48x^5-27x^6)/(1-6x+7x^2+12x^3-15x^4-11x^5+5x^6+3x^7))` -/
def P16026508920375765628.Spec : Prop :=
  ∀ n, P16026508920375765628.a n = A250995 (n + 1)

theorem P16026508920375765628.correct : P16026508920375765628.Spec := by
  intro n
  simp only [A250995, Nat.add_sub_cancel]

end A250995

/-! ## A250995.P10227070748499295603

`A250994(∑[n]+1)`
-/

namespace A250995.P10227070748499295603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250995.P10227070748499295603

namespace A250995

/-- `A250994(∑[n]+1)` -/
def P10227070748499295603.Spec : Prop :=
  ∀ n, P10227070748499295603.a n = A250995 (n + 1)

end A250995

/-! ## A250995.P2077798128948317269

`record[A010054(n)*A250994(n+1)]`
-/

namespace A250995.P2077798128948317269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250995.P2077798128948317269

namespace A250995

/-- `record[A010054(n)*A250994(n+1)]` -/
def P2077798128948317269.Spec : Prop :=
  ∀ n, P2077798128948317269.a n = A250995 (n + 1)

end A250995

/-! ## A250995.P5327216183476019056

`record[A250994(n+1)/A007754(n)]`
-/

namespace A250995.P5327216183476019056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250994 (n + 1) : ℚ) / (A007754 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250995.P5327216183476019056

namespace A250995

/-- `record[A250994(n+1)/A007754(n)]` -/
def P5327216183476019056.Spec : Prop :=
  ∀ n, P5327216183476019056.a n = (A250995 (n + 1) : ℚ)

end A250995

/-!
# A250996: Number of (2+1)X(n+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250996, there is no canonical definition to state claims against.
-/

/-! ## A250996.P18104812837214445768

`A250994(∑[1+n]+2)`
-/

namespace A250996.P18104812837214445768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250996.P18104812837214445768

/-! ## A250996.P17489462677299083244

`record[A250994(A339333(n+1)+2)]`
-/

namespace A250996.P17489462677299083244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A339333 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250996.P17489462677299083244

/-! ## A250996.P13910653487097515989

`record[gcd(A130402(n), A250994(n+3))]`
-/

namespace A250996.P13910653487097515989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130402 n) (A250994 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250996.P13910653487097515989

/-!
# A250997: Number of (3+1)X(n+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250997, there is no canonical definition to state claims against.
-/

/-! ## A250997.P16453934819884847594

`A250994(∑[n+2]+4)`
-/

namespace A250997.P16453934819884847594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250997.P16453934819884847594

/-!
# A250998: Number of (4+1)X(n+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250998, there is no canonical definition to state claims against.
-/

/-! ## A250998.P13626587452506208617

`A250994(∑[n+3]+7)`
-/

namespace A250998.P13626587452506208617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250998.P13626587452506208617

/-!
# A250999: Number of (5+1)X(n+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250999, there is no canonical definition to state claims against.
-/

/-! ## A250999.P5111570451723183229

`A250994(∑[n+4]+11)`
-/

namespace A250999.P5111570451723183229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A250999.P5111570451723183229

