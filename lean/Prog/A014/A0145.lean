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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A014500: Number of graphs with unlabeled (non-isolated) nodes and n labeled edges.

The programs for A014500, there is no canonical definition to state claims against.
-/

/-! ## A014500.P15633805033141233794

`A331126(∑[n+2]+3)`
-/

namespace A014500.P15633805033141233794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331126 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A014500.P15633805033141233794

/-! ## A014500.P3952385651493171800

`or(A000007(n), A331126(A340266(n+1)))`
-/

namespace A014500.P3952385651493171800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A331126 (A340266 (n + 1)).toNat)

end

end A014500.P3952385651493171800

/-! ## A014500.P13666029785115359039

`or(A055641(n), A331126(A340266(n+1)))`
-/

namespace A014500.P13666029785115359039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A331126 (A340266 (n + 1)).toNat)

end

end A014500.P13666029785115359039

/-! ## A014500.P258039176006224725

`A331126(A340266(n+1))%A024218(n+2)`
-/

namespace A014500.P258039176006224725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331126 (A340266 (n + 1)).toNat) (A024218 (n + 2))

end

end A014500.P258039176006224725

/-! ## A014500.P12454946355737392714

`or(A036859(n+1), A331126(A340266(n+1)))`
-/

namespace A014500.P12454946355737392714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036859 (n + 1)) (A331126 (A340266 (n + 1)).toNat)

end

end A014500.P12454946355737392714

/-!
# A014501: Number of graphs with loops, having unlabeled (non-isolated) nodes and n labeled edges.

The programs for A014501, there is no canonical definition to state claims against.
-/

/-! ## A014501.P1308019792686356534

`record[A331161(∑[n]+2)]`
-/

namespace A014501.P1308019792686356534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331161 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014501.P1308019792686356534

/-! ## A014501.P17889419281610507185

`A331161(∑[n+2]+3)`
-/

namespace A014501.P17889419281610507185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331161 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A014501.P17889419281610507185

/-! ## A014501.P11872453846014753957

`gcd(A000038(n), A331161(A340266(n+1)))`
-/

namespace A014501.P11872453846014753957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A331161 (A340266 (n + 1)).toNat)

end

end A014501.P11872453846014753957

/-! ## A014501.P13526350784122995611

`or(A055641(n), A331161(A340266(n+1)))`
-/

namespace A014501.P13526350784122995611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A331161 (A340266 (n + 1)).toNat)

end

end A014501.P13526350784122995611

/-! ## A014501.P16070513762042280978

`A331161(A340266(n+1))%A331196(n+1)`
-/

namespace A014501.P16070513762042280978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331161 (A340266 (n + 1)).toNat) (A331196 (n + 1))

end

end A014501.P16070513762042280978

/-!
# A014502: Inverse of 493rd cyclotomic polynomial.

The programs for A014502, there is no canonical definition to state claims against.
-/

/-! ## A014502.P3570960633620983302

`A014995(n)*A033999(n)`
-/

namespace A014502.P3570960633620983302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014995 n * A033999 n

end

end A014502.P3570960633620983302

/-!
# A014503: Inverse of 494th cyclotomic polynomial.

The programs for A014503, there is no canonical definition to state claims against.
-/

/-! ## A014503.P17930630373661685096

`A014256(n)*A033999(n)`
-/

namespace A014503.P17930630373661685096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014256 n * A033999 n

end

end A014503.P17930630373661685096

/-!
# A014504: Inverse of 495th cyclotomic polynomial.

The programs for A014504, there is no canonical definition to state claims against.
-/

/-! ## A014504.P14169079773962642492

`A014834(A093545(n))`
-/

namespace A014504.P14169079773962642492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014834 (A093545 n).toNat

end

end A014504.P14169079773962642492

/-!
# A014505: Number of digraphs with unlabeled (non-isolated) nodes and n labeled edges.

The programs for A014505, there is no canonical definition to state claims against.
-/

/-! ## A014505.P18040298052238694597

`A297133(5^(∑[round(sqrt(2*n))]-n))`
-/

namespace A014505.P18040298052238694597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297133 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ))).toNat

end

end A014505.P18040298052238694597

/-!
# A014506: Inverse of 497th cyclotomic polynomial.

The programs for A014506, there is no canonical definition to state claims against.
-/

/-! ## A014506.P973142087248351039

`A014590(lt[A124764(n), A304182(n+1)])`
-/

namespace A014506.P973142087248351039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014590 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014506.P973142087248351039

/-!
# A014507: Number of digraphs with loops, having unlabeled (non-isolated) nodes and n labeled edges.

The programs for A014507, there is no canonical definition to state claims against.
-/

/-! ## A014507.P11799143079437566457

`A102487(3*n*a(n-1))` with `a(0)=1`
-/

namespace A014507.P11799143079437566457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102487 (3 * ((n : ℤ) * a (n - 1))).toNat

end

end A014507.P11799143079437566457

/-!
# A014508: a(n) = floor( n! / e ).

The programs for A014508, there is no canonical definition to state claims against.
-/

/-! ## A014508.P17632357073648016086

`∑[n*floor((n!+1)/e)]`
-/

namespace A014508.P17632357073648016086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(Nat.factorial n + 1 : ℝ) / Real.exp 1⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014508.P17632357073648016086

/-! ## A014508.P4880103759504150049

`(n+1)*a(n-1)+n*(n+1)%2` with `a(0)=0`
-/

namespace A014508.P4880103759504150049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) * a (n - 1) + n * ((n + 1) % 2)

end

end A014508.P4880103759504150049

/-! ## A014508.P17301170167093601288

`a(n-1)+n*(gcd(2, n)+a(n-1)-1)` with `a(0)=0`
-/

namespace A014508.P17301170167093601288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ((Nat.gcd 2 n : ℤ) + (a (n - 1) - 1))

end

end A014508.P17301170167093601288

/-! ## A014508.P9156072370082858588

`a(n-1)-n*((1-n)%2-a(n-1))` with `a(0)=0`
-/

namespace A014508.P9156072370082858588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (n : ℤ) * (Int.tmod (1 - (n : ℤ)) 2 - a (n - 1))

end

end A014508.P9156072370082858588

/-! ## A014508.P16036689125901121191

`abs(Δ[n*(1-a(n-1))])-(a(n-1)+1)` with `a(0)=0`
-/

namespace A014508.P16036689125901121191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |f1 (n + 1) - f1 n| - (a (n - 1) + 1)

end

end A014508.P16036689125901121191

/-! ## A014508.P17773029651762274330

`∑[(n+1)*(a(n-1)+(-1)^n)]-∑[(-1)^n+n*a(n-1)]` with `a(0)=1`
-/

namespace A014508.P17773029651762274330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) * (f1 (n - 1) + (-1) ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (-1) ^ n + (n : ℤ) * f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A014508.P17773029651762274330

/-! ## A014508.P17229827275075328377

`∑[n*A000166(n)]`
-/

namespace A014508.P17229827275075328377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014508.P17229827275075328377

/-! ## A014508.P7893400260104793751

`∑[lcm(n, A182386(n))]`
-/

namespace A014508.P7893400260104793751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A182386 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014508.P7893400260104793751

/-! ## A014508.P747429982932859550

`A174318(n+1)-1`
-/

namespace A014508.P747429982932859550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174318 (n + 1) - 1

end

end A014508.P747429982932859550

/-! ## A014508.P2468942791005573289

`∑[n*A008290(∑[n])]`
-/

namespace A014508.P2468942791005573289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008290 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014508.P2468942791005573289

/-!
# A014509: Truncation of Bernoulli number: floor(|B_2n|) * sign(B_2n).

The programs for A014509, there is no canonical definition to state claims against.
-/

/-! ## A014509.P1350958789116717810

`A134825(n)+Δ[A065033(n)]`
-/

namespace A014509.P1350958789116717810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134825 n + (f1 (n + 1) - f1 n)

end

end A014509.P1350958789116717810

/-! ## A014509.P907723229603223772

`A134825(n)+val(A010000(n), 2)`
-/

namespace A014509.P907723229603223772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134825 n + (SequenceMachineLib.valuation (A010000 n).toNat 2 : ℤ)

end

end A014509.P907723229603223772

/-! ## A014509.P11690093337375301388

`A134825(n)+val(A010144(n), 2)`
-/

namespace A014509.P11690093337375301388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134825 n + (SequenceMachineLib.valuation (A010144 n).toNat 2 : ℤ)

end

end A014509.P11690093337375301388

/-! ## A014509.P10251396533578623560

`A134825(n)+char[A074670(n+1)]`
-/

namespace A014509.P10251396533578623560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074670 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134825 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A014509.P10251396533578623560

/-! ## A014509.P3319953984541901664

`A134825(n)+A197985(n+1)%2`
-/

namespace A014509.P3319953984541901664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134825 n + Int.tmod (A197985 (n + 1)) 2

end

end A014509.P3319953984541901664

/-!
# A014510: a(n) = floor( Gamma(n+1/2) ).

The programs for A014510, there is no canonical definition to state claims against.
-/

/-! ## A014510.P1182525136310906591

`A284994(Δ[n²])`
-/

namespace A014510.P1182525136310906591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284994 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A014510.P1182525136310906591

/-! ## A014510.P17828449746088702083

`A285000(4*n+2)`
-/

namespace A014510.P17828449746088702083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (4 * n + 2)

end

end A014510.P17828449746088702083

/-! ## A014510.P17740909122146072955

`A284995(Δ[n²])-1`
-/

namespace A014510.P17740909122146072955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284995 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A014510.P17740909122146072955

/-! ## A014510.P10242220707183313185

`A285001(4*n+2)-1`
-/

namespace A014510.P10242220707183313185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (4 * n + 2) - 1

end

end A014510.P10242220707183313185

/-! ## A014510.P1999044116079310132

`gcd(A151933(n), A284994(2*n+1))`
-/

namespace A014510.P1999044116079310132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A284994 (2 * n + 1))

end

end A014510.P1999044116079310132

/-! ## A014510.P373652338353168865

`A284994(2*n+1)+A014522(n+1)*A096268(2*n)`
-/

namespace A014510.P373652338353168865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284994 (2 * n + 1) + A014522 (n + 1) * A096268 (2 * n)

end

end A014510.P373652338353168865

/-!
# A014511: a(n) = floor( Gamma(n+1/3) ).

The programs for A014511, there is no canonical definition to state claims against.
-/

/-! ## A014511.P5772919601868396056

`A284996(3*n+1)`
-/

namespace A014511.P5772919601868396056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (3 * n + 1)

end

end A014511.P5772919601868396056

/-! ## A014511.P14305931028312875781

`A284997(3*n+1)-1`
-/

namespace A014511.P14305931028312875781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (3 * n + 1) - 1

end

end A014511.P14305931028312875781

/-! ## A014511.P14388190217757336043

`((-1)^n)²*A284996(A016777(n))`
-/

namespace A014511.P14388190217757336043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A284996 (A016777 n).toNat

end

end A014511.P14388190217757336043

/-! ## A014511.P7264997921687586371

`lcm(A033999(n), A284996(A016777(n)))`
-/

namespace A014511.P7264997921687586371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A284996 (A016777 n).toNat)

end

end A014511.P7264997921687586371

/-! ## A014511.P11722309627139147949

`or(A000038(n), A284996(A016777(n)))`
-/

namespace A014511.P11722309627139147949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A284996 (A016777 n).toNat)

end

end A014511.P11722309627139147949

/-! ## A014511.P17134637864262602585

`A284996(A016777(n))+A000007(n+1)`
-/

namespace A014511.P17134637864262602585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (A016777 n).toNat + A000007 (n + 1)

end

end A014511.P17134637864262602585

/-! ## A014511.P12263366197545827912

`gcd(2*A000007(n), A284996(A016777(n)))`
-/

namespace A014511.P12263366197545827912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A000007 n) (A284996 (A016777 n).toNat)

end

end A014511.P12263366197545827912

/-! ## A014511.P3941017548919053644

`A284996(A016777(n))/A014963(C(n+2, 2))`
-/

namespace A014511.P3941017548919053644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284996 (A016777 n).toNat : ℚ) / (A014963 (Nat.choose (n + 2) 2) : ℚ)

end

end A014511.P3941017548919053644

/-! ## A014511.P6345627713381233617

`A284996(A016777(n))^A000125(n*A094497(n))`
-/

namespace A014511.P6345627713381233617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284996 (A016777 n).toNat : ℚ) ^ (A000125 ((n : ℤ) * A094497 n).toNat : ℤ)

end

end A014511.P6345627713381233617

/-!
# A014512: a(n) = floor( Gamma(n+2/3) ).

The programs for A014512, there is no canonical definition to state claims against.
-/

/-! ## A014512.P10374820192862423476

`A284996(3*n+2)`
-/

namespace A014512.P10374820192862423476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (3 * n + 2)

end

end A014512.P10374820192862423476

/-! ## A014512.P14258216780434572433

`A284997(3*n+2)-1`
-/

namespace A014512.P14258216780434572433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284997 (3 * n + 2) - 1

end

end A014512.P14258216780434572433

/-! ## A014512.P2953041374278533200

`or(char[2], A284996(A016789(n)))`
-/

namespace A014512.P2953041374278533200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A284996 (A016789 n).toNat)

end

end A014512.P2953041374278533200

/-! ## A014512.P9606903682603204256

`A284996(A016789(n))^A178334(n)`
-/

namespace A014512.P9606903682603204256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284996 (A016789 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A014512.P9606903682603204256

/-! ## A014512.P7515403233163865629

`gcd(A151933(n), A284996(A016789(n)))`
-/

namespace A014512.P7515403233163865629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A284996 (A016789 n).toNat)

end

end A014512.P7515403233163865629

/-! ## A014512.P15292104587836721904

`lcm(A033999(n), A284996(A016789(n)))`
-/

namespace A014512.P15292104587836721904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A284996 (A016789 n).toNat)

end

end A014512.P15292104587836721904

/-! ## A014512.P3260641191468060630

`A284996(A016789(n))+A000007(n+4)`
-/

namespace A014512.P3260641191468060630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (A016789 n).toNat + A000007 (n + 4)

end

end A014512.P3260641191468060630

/-! ## A014512.P15907501254645918623

`A284996(A016789(n))-A000035(8*n)`
-/

namespace A014512.P15907501254645918623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284996 (A016789 n).toNat - A000035 (8 * n)

end

end A014512.P15907501254645918623

/-! ## A014512.P8364450003752626821

`A284996(A016789(n))/A078898(A095959(n+1))`
-/

namespace A014512.P8364450003752626821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284996 (A016789 n).toNat : ℚ) / (A078898 (A095959 (n + 1)).toNat : ℚ)

end

end A014512.P8364450003752626821

/-! ## A014512.P15661660381903388098

`A014963(A153126(n))*A284996(A016789(n))`
-/

namespace A014512.P15661660381903388098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A153126 n).toNat * A284996 (A016789 n).toNat

end

end A014512.P15661660381903388098

/-!
# A014513: a(n) = floor( Gamma(n+1/4) ).

The programs for A014513, there is no canonical definition to state claims against.
-/

/-! ## A014513.P6234177532108442807

`A285000(4*n+1)`
-/

namespace A014513.P6234177532108442807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (4 * n + 1)

end

end A014513.P6234177532108442807

/-! ## A014513.P575850174999139657

`A285001(4*n+1)-1`
-/

namespace A014513.P575850174999139657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (4 * n + 1) - 1

end

end A014513.P575850174999139657

/-! ## A014513.P11954857312141174264

`char[A202064(n)]*A285000(xor(1, 4*n))`
-/

namespace A014513.P11954857312141174264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202064 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A285000 (Nat.xor 1 (4 * n))

end

end A014513.P11954857312141174264

/-! ## A014513.P13949476328932651120

`A285000(xor(1, 4*n))/A091090(A019429(n))`
-/

namespace A014513.P13949476328932651120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285000 (Nat.xor 1 (4 * n)) : ℚ) / (A091090 (A019429 n).toNat : ℚ)

end

end A014513.P13949476328932651120

/-! ## A014513.P9952518047442559138

`A285000(xor(1, 4*n))/A091090(2*A070878(n))`
-/

namespace A014513.P9952518047442559138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285000 (Nat.xor 1 (4 * n)) : ℚ) / (A091090 (2 * A070878 n).toNat : ℚ)

end

end A014513.P9952518047442559138

/-! ## A014513.P5280503052545031893

`A055231(A048896(2*n)²)*A285000(xor(1, 4*n))`
-/

namespace A014513.P5280503052545031893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A048896 (2 * n) ^ 2).toNat * A285000 (Nat.xor 1 (4 * n))

end

end A014513.P5280503052545031893

/-! ## A014513.P1338688003318739546

`A285000(xor(1, 4*n))/A063274(A048896(2*n)²)`
-/

namespace A014513.P1338688003318739546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285000 (Nat.xor 1 (4 * n)) : ℚ) / (A063274 (A048896 (2 * n) ^ 2).toNat : ℚ)

end

end A014513.P1338688003318739546

/-!
# A014514: a(n) = floor( Gamma(n+3/4) ).

The programs for A014514, there is no canonical definition to state claims against.
-/

/-! ## A014514.P8875953040064263947

`A285000(4*n+3)`
-/

namespace A014514.P8875953040064263947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (4 * n + 3)

end

end A014514.P8875953040064263947

/-! ## A014514.P3062969517241835808

`A285001(4*n+3)-1`
-/

namespace A014514.P3062969517241835808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285001 (4 * n + 3) - 1

end

end A014514.P3062969517241835808

/-! ## A014514.P13224451464921197645

`A285000(A004767(n))^A178334(n)`
-/

namespace A014514.P13224451464921197645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285000 (A004767 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A014514.P13224451464921197645

/-! ## A014514.P5497431638859164955

`gcd(A151933(n), A285000(A004767(n)))`
-/

namespace A014514.P5497431638859164955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A285000 (A004767 n).toNat)

end

end A014514.P5497431638859164955

/-! ## A014514.P12042120283894420303

`lcm(A033999(n), A285000(A004767(n)))`
-/

namespace A014514.P12042120283894420303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A285000 (A004767 n).toNat)

end

end A014514.P12042120283894420303

/-! ## A014514.P11879190033697289044

`or(A000007(n), A285000(A004767(n)))`
-/

namespace A014514.P11879190033697289044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A285000 (A004767 n).toNat)

end

end A014514.P11879190033697289044

/-! ## A014514.P10469012236096892855

`A151909(n)!*A285000(A004767(n))`
-/

namespace A014514.P10469012236096892855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151909 n).toNat : ℤ) * A285000 (A004767 n).toNat

end

end A014514.P10469012236096892855

/-! ## A014514.P1027583604657716475

`A285000(A004767(n))-A010879(10*n)`
-/

namespace A014514.P1027583604657716475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (A004767 n).toNat - A010879 (10 * n)

end

end A014514.P1027583604657716475

/-! ## A014514.P1362339574946455843

`A007318(A000096(n))*A285000(A004767(n))`
-/

namespace A014514.P1362339574946455843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A285000 (A004767 n).toNat

end

end A014514.P1362339574946455843

/-! ## A014514.P4152013831051804766

`A285000(A004767(n))/A001222(A001359(n+1))`
-/

namespace A014514.P4152013831051804766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285000 (A004767 n).toNat : ℚ) / (A001222 (A001359 (n + 1)).toNat : ℚ)

end

end A014514.P4152013831051804766

/-!
# A014515: Inverse of 506th cyclotomic polynomial.

The programs for A014515, there is no canonical definition to state claims against.
-/

/-! ## A014515.P11342969870577597338

`A014262(n)/(-1)^n`
-/

namespace A014515.P11342969870577597338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014262 n : ℚ) / ((-1) ^ n : ℚ)

end

end A014515.P11342969870577597338

/-!
# A014516: Nearest integer to Gamma(n + 1/3).

The programs for A014516, there is no canonical definition to state claims against.
-/

/-! ## A014516.P3198314505090697696

`A014511(n)+A003849(A029993(n+2))`
-/

namespace A014516.P3198314505090697696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014511 n + A003849 (A029993 (n + 2)).toNat

end

end A014516.P3198314505090697696

/-! ## A014516.P9773433467954795097

`or(A014511(n), A071028(3*C(n+5, 5)))`
-/

namespace A014516.P9773433467954795097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014511 n) (A071028 (3 * Nat.choose (n + 5) 5))

end

end A014516.P9773433467954795097

/-! ## A014516.P15869767943714966161

`A014511(n)+A010054(A003418(n))`
-/

namespace A014516.P15869767943714966161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014511 n + A010054 (A003418 n).toNat

end

end A014516.P15869767943714966161

/-! ## A014516.P270487455408498714

`A014511(n)+A010054(A081669(n))`
-/

namespace A014516.P270487455408498714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014511 n + A010054 (A081669 n).toNat

end

end A014516.P270487455408498714

/-! ## A014516.P10817273855628935956

`A014511(n)+A010054(A105696(n))`
-/

namespace A014516.P10817273855628935956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014511 n + A010054 (A105696 n).toNat

end

end A014516.P10817273855628935956

/-!
# A014517: Nearest integer to Gamma(n+2/3).

The programs for A014517, there is no canonical definition to state claims against.
-/

/-! ## A014517.P9495853986195913821

`A344739(A193919(2*(n+2)))+A014512(n)`
-/

namespace A014517.P9495853986195913821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344739 (A193919 (2 * (n + 2))).toNat + A014512 n

end

end A014517.P9495853986195913821

/-! ## A014517.P15080823530914516997

`A014512(n)+A003849(A014516(n))`
-/

namespace A014517.P15080823530914516997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014512 n + A003849 (A014516 n).toNat

end

end A014517.P15080823530914516997

/-! ## A014517.P17460678538391538311

`A028310(A141169(n)+A014512(n))`
-/

namespace A014517.P17460678538391538311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A141169 n + A014512 n).toNat

end

end A014517.P17460678538391538311

/-! ## A014517.P4796921856307176839

`A079978(A121656(n))+A014512(n)`
-/

namespace A014517.P4796921856307176839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A121656 n).toNat + A014512 n

end

end A014517.P4796921856307176839

/-!
# A014518: Nearest integer to Gamma(n+1/4).

The programs for A014518, there is no canonical definition to state claims against.
-/

/-! ## A014518.P5938762070886830919

`A112713(A279216(n))+A014513(n)`
-/

namespace A014518.P5938762070886830919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112713 (A279216 n).toNat + A014513 n

end

end A014518.P5938762070886830919

/-! ## A014518.P16845722829855525314

`A379671(A026021(n))+A014513(n)`
-/

namespace A014518.P16845722829855525314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379671 (A026021 n).toNat + A014513 n

end

end A014518.P16845722829855525314

/-! ## A014518.P6099334397790864221

`A028310(A289034(n+1)+A014513(n))`
-/

namespace A014518.P6099334397790864221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A289034 (n + 1) + A014513 n).toNat

end

end A014518.P6099334397790864221

/-! ## A014518.P10303857178134914429

`A028310(A289034(n+1)+A285000(4*n+1))`
-/

namespace A014518.P10303857178134914429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A289034 (n + 1) + A285000 (4 * n + 1)).toNat

end

end A014518.P10303857178134914429

/-! ## A014518.P13954192637631690905

`A028310(A289034(n+1)+A285001(4*n+1)-1)`
-/

namespace A014518.P13954192637631690905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A289034 (n + 1) + (A285001 (4 * n + 1) - 1)).toNat

end

end A014518.P13954192637631690905

/-!
# A014519: Inverse of 510th cyclotomic polynomial.

The programs for A014519, there is no canonical definition to state claims against.
-/

/-! ## A014519.P18091212252419106383

`A014264(n)*A033999(n)`
-/

namespace A014519.P18091212252419106383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014264 n * A033999 n

end

end A014519.P18091212252419106383

/-!
# A014520: Inverse of 511th cyclotomic polynomial.

The programs for A014520, there is no canonical definition to state claims against.
-/

/-! ## A014520.P1541423468419396422

`A015031(n)*A023900(A006519(n+1))`
-/

namespace A014520.P1541423468419396422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015031 n * A023900 (A006519 (n + 1)).toNat

end

end A014520.P1541423468419396422

/-!
# A014521: Nearest integer to Gamma(n+1/2).

The programs for A014521, there is no canonical definition to state claims against.
-/

/-! ## A014521.P17120291580140561544

`A097806(A269303(2*n+3))+A014510(n)`
-/

namespace A014521.P17120291580140561544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (A269303 (2 * n + 3)).toNat + A014510 n

end

end A014521.P17120291580140561544

/-! ## A014521.P6133803869134200009

`A082784(A083309(n+1))+A014510(n)`
-/

namespace A014521.P6133803869134200009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 (A083309 (n + 1)).toNat + A014510 n

end

end A014521.P6133803869134200009

/-! ## A014521.P17351904747611321928

`A284994(Δ[n²])+A082784(A083309(n+1))`
-/

namespace A014521.P17351904747611321928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284994 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A082784 (A083309 (n + 1)).toNat

end

end A014521.P17351904747611321928

/-! ## A014521.P7341346965956310418

`A285000(4*n+2)+A082784(A083309(n+1))`
-/

namespace A014521.P7341346965956310418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285000 (4 * n + 2) + A082784 (A083309 (n + 1)).toNat

end

end A014521.P7341346965956310418

/-! ## A014521.P518955983283743926

`A082784(A083309(n+1))+A285001(4*n+2)-1`
-/

namespace A014521.P518955983283743926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 (A083309 (n + 1)).toNat + (A285001 (4 * n + 2) - 1)

end

end A014521.P518955983283743926

/-!
# A014522: Nearest integer to Gamma(n+3/4).

The programs for A014522, there is no canonical definition to state claims against.
-/

/-! ## A014522.P9739374688431574290

`A000027(A014514(n)+1-A289034(n+1))`
-/

namespace A014522.P9739374688431574290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A014514 n + (1 - A289034 (n + 1))).toNat

end

end A014522.P9739374688431574290

/-! ## A014522.P6952307103889294992

`A014514(n)+A003849(A014516(n))`
-/

namespace A014522.P6952307103889294992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014514 n + A003849 (A014516 n).toNat

end

end A014522.P6952307103889294992

/-! ## A014522.P4986706227071432511

`A028310(A141169(n)+A014514(n))`
-/

namespace A014522.P4986706227071432511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A141169 n + A014514 n).toNat

end

end A014522.P4986706227071432511

/-! ## A014522.P9185718175687128372

`A185057(A001353(n))+A014514(n)`
-/

namespace A014522.P9185718175687128372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185057 (A001353 n).toNat + A014514 n

end

end A014522.P9185718175687128372

/-!
# A014523: Number of Hamiltonian paths in a 4 X (2n+1) grid starting at the lower left corner and finishing in the upper right corner.

The programs for A014523, the canonical program `A014523.P7472566675746237292` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014523 has offset 0).

The definition of A014523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014523.P7472566675746237292

`7*a(n-1)-9*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=20, a(3)=111`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014523

/-- `7*a(n-1)-9*a(n-2)+7*a(n-3)-a(n-4)` -/
def P7472566675746237292.Spec : Prop :=
  ∀ n, P7472566675746237292.a n = A014523 n

theorem P7472566675746237292.correct : P7472566675746237292.Spec := by
  intro n
  simp only [A014523]

end A014523

/-! ## A014523.P11464446079651609971

`∑[A152090(2*n+1)]`
-/

namespace A014523.P11464446079651609971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152090 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014523.P11464446079651609971

namespace A014523

/-- `∑[A152090(2*n+1)]` -/
def P11464446079651609971.Spec : Prop :=
  ∀ n, P11464446079651609971.a n = A014523 n

end A014523

/-! ## A014523.P16377555411208269973

`∑[∑[A280758(A004273(n))]]`
-/

namespace A014523.P16377555411208269973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280758 (A004273 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014523.P16377555411208269973

namespace A014523

/-- `∑[∑[A280758(A004273(n))]]` -/
def P16377555411208269973.Spec : Prop :=
  ∀ n, P16377555411208269973.a n = A014523 n

end A014523

/-! ## A014523.P13918395362229326667

`∑[record[A152090(A006257(n))]]`
-/

namespace A014523.P13918395362229326667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152090 (A006257 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014523.P13918395362229326667

namespace A014523

/-- `∑[record[A152090(A006257(n))]]` -/
def P13918395362229326667.Spec : Prop :=
  ∀ n, P13918395362229326667.a n = A014523 n

end A014523

/-! ## A014523.P18224923030290730846

`∑[record[A152090(A093178(n))]]`
-/

namespace A014523.P18224923030290730846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152090 (A093178 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014523.P18224923030290730846

namespace A014523

/-- `∑[record[A152090(A093178(n))]]` -/
def P18224923030290730846.Spec : Prop :=
  ∀ n, P18224923030290730846.a n = A014523 n

end A014523

/-! ## A014523.P517439977572546207

`∑[record[A152090(A000265(n+1))]]`
-/

namespace A014523.P517439977572546207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152090 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014523.P517439977572546207

namespace A014523

/-- `∑[record[A152090(A000265(n+1))]]` -/
def P517439977572546207.Spec : Prop :=
  ∀ n, P517439977572546207.a n = A014523 n

end A014523

/-! ## A014523.P13933933217174129742

`∑[record[A152090(A063198(n+1))]]`
-/

namespace A014523.P13933933217174129742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152090 (A063198 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014523.P13933933217174129742

namespace A014523

/-- `∑[record[A152090(A063198(n+1))]]` -/
def P13933933217174129742.Spec : Prop :=
  ∀ n, P13933933217174129742.a n = A014523 n

end A014523

/-! ## A014523.P4664104874816660992

`∑[record[A152090(A065190(n+1))]]`
-/

namespace A014523.P4664104874816660992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152090 (A065190 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014523.P4664104874816660992

namespace A014523

/-- `∑[record[A152090(A065190(n+1))]]` -/
def P4664104874816660992.Spec : Prop :=
  ∀ n, P4664104874816660992.a n = A014523 n

end A014523

/-!
# A014524: Number of Hamiltonian paths from NW to SW corners in a grid with 2n rows and 4 columns.

The programs for A014524, the canonical program `A014524.P3685930230095476994` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014524 has offset 0).

The definition of A014524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014524.P3685930230095476994

`7*a(n-1)-9*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=47`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014524

/-- `7*a(n-1)-9*a(n-2)+7*a(n-3)-a(n-4)` -/
def P3685930230095476994.Spec : Prop :=
  ∀ n, P3685930230095476994.a n = A014524 n

theorem P3685930230095476994.correct : P3685930230095476994.Spec := by
  intro n
  simp only [A014524]

end A014524

/-! ## A014524.P17733004468723482935

`∑[A152090(2*n)]-1`
-/

namespace A014524.P17733004468723482935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152090 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014524.P17733004468723482935

namespace A014524

/-- `∑[A152090(2*n)]-1` -/
def P17733004468723482935.Spec : Prop :=
  ∀ n, P17733004468723482935.a n = A014524 n

end A014524

/-! ## A014524.P9033032502609638933

`∑[A057427(n)*A152090(2*n)]`
-/

namespace A014524.P9033032502609638933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A152090 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014524.P9033032502609638933

namespace A014524

/-- `∑[A057427(n)*A152090(2*n)]` -/
def P9033032502609638933.Spec : Prop :=
  ∀ n, P9033032502609638933.a n = A014524 n

end A014524

/-! ## A014524.P619388836800755443

`∑[and(A057428(n), A152090(2*n))]`
-/

namespace A014524.P619388836800755443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A152090 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014524.P619388836800755443

namespace A014524

/-- `∑[and(A057428(n), A152090(2*n))]` -/
def P619388836800755443.Spec : Prop :=
  ∀ n, P619388836800755443.a n = A014524 n

end A014524

/-! ## A014524.P8897937634343447487

`A057428(n+1)+∑[A152090(2*n)]`
-/

namespace A014524.P8897937634343447487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152090 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014524.P8897937634343447487

namespace A014524

/-- `A057428(n+1)+∑[A152090(2*n)]` -/
def P8897937634343447487.Spec : Prop :=
  ∀ n, P8897937634343447487.a n = A014524 n

end A014524

/-! ## A014524.P15167841662551737116

`∑[A152142(2*n)]-1`
-/

namespace A014524.P15167841662551737116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152142 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014524.P15167841662551737116

namespace A014524

/-- `∑[A152142(2*n)]-1` -/
def P15167841662551737116.Spec : Prop :=
  ∀ n, P15167841662551737116.a n = A014524 n

end A014524

/-! ## A014524.P15720235798971157721

`∑[∑[A280758(2*n)]-A280758(2*n)]`
-/

namespace A014524.P15720235798971157721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280758 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A280758 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014524.P15720235798971157721

namespace A014524

/-- `∑[∑[A280758(2*n)]-A280758(2*n)]` -/
def P15720235798971157721.Spec : Prop :=
  ∀ n, P15720235798971157721.a n = A014524 n

end A014524

/-! ## A014524.P11584888165624502436

`∑[A152090(2*n)%A292181(n+1)]`
-/

namespace A014524.P11584888165624502436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152090 (2 * n)) (A292181 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014524.P11584888165624502436

namespace A014524

/-- `∑[A152090(2*n)%A292181(n+1)]` -/
def P11584888165624502436.Spec : Prop :=
  ∀ n, P11584888165624502436.a n = A014524 n

end A014524

/-!
# A014525: Order of shuffle group for deck of 3n cards.

The programs for A014525, there is no canonical definition to state claims against.
-/

/-! ## A014525.P10729532882140964710

`A000142(3*n)/A334056(n)!`
-/

namespace A014525.P10729532882140964710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (3 * n) : ℚ) / (Nat.factorial (A334056 n).toNat : ℚ)

end

end A014525.P10729532882140964710

/-!
# A014526: Inverse of 517th cyclotomic polynomial.

The programs for A014526, there is no canonical definition to state claims against.
-/

/-! ## A014526.P11500087817719405474

`A015043(n)*A033999(n)`
-/

namespace A014526.P11500087817719405474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015043 n * A033999 n

end

end A014526.P11500087817719405474

/-!
# A014527: Inverse of 518th cyclotomic polynomial.

The programs for A014527, there is no canonical definition to state claims against.
-/

/-! ## A014527.P2501411727248648965

`A014268(n)*A033999(n)`
-/

namespace A014527.P2501411727248648965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014268 n * A033999 n

end

end A014527.P2501411727248648965

/-!
# A014528: Neither == 0 (mod 4) nor a power of 3.

The programs for A014528, the canonical program `A014528.P14309397987583269711` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014528 has offset 0).

The definition of A014528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014528.P14309397987583269711

`∪[A061346(n+1), A359375(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A014528

/-- `∪[A061346(n+1), A359375(n+1)]` -/
def P14309397987583269711.Spec : Prop :=
  ∀ n, (P14309397987583269711.a n : ℤ) = A014528 n

theorem P14309397987583269711.correct : P14309397987583269711.Spec := by
  intro n
  simp only [A014528]

end A014528

/-! ## A014528.P9551634252876221173

`∪[A216848(n+1), A359375(n+1)]`
-/

namespace A014528.P9551634252876221173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014528.P9551634252876221173

namespace A014528

/-- `∪[A216848(n+1), A359375(n+1)]` -/
def P9551634252876221173.Spec : Prop :=
  ∀ n, (P9551634252876221173.a n : ℤ) = A014528 n

end A014528

/-! ## A014528.P6033359545005454746

`∪[A327922(n+1), A359375(n+1)]`
-/

namespace A014528.P6033359545005454746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014528.P6033359545005454746

namespace A014528

/-- `∪[A327922(n+1), A359375(n+1)]` -/
def P6033359545005454746.Spec : Prop :=
  ∀ n, (P6033359545005454746.a n : ℤ) = A014528 n

end A014528

/-! ## A014528.P16183888378657981567

`lt[char[A152860(n+2)], A152822(n+2)]`
-/

namespace A014528.P16183888378657981567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152860 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A014528.P16183888378657981567

namespace A014528

/-- `lt[char[A152860(n+2)], A152822(n+2)]` -/
def P16183888378657981567.Spec : Prop :=
  ∀ n, (P16183888378657981567.a n : ℤ) = A014528 n

end A014528

/-! ## A014528.P953803756253297938

`lt[A103310(3*n), A047557(A255051(n+1))]`
-/

namespace A014528.P953803756253297938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047557 (A255051 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014528.P953803756253297938

namespace A014528

/-- `lt[A103310(3*n), A047557(A255051(n+1))]` -/
def P953803756253297938.Spec : Prop :=
  ∀ n, (P953803756253297938.a n : ℤ) = A014528 n

end A014528

/-! ## A014528.P7460776978616434495

`eq[A014963(A066182(3*n+1)), A166486(n)]`
-/

namespace A014528.P7460776978616434495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A066182 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014528.P7460776978616434495

namespace A014528

/-- `eq[A014963(A066182(3*n+1)), A166486(n)]` -/
def P7460776978616434495.Spec : Prop :=
  ∀ n, (P7460776978616434495.a n : ℤ) = A014528 n

end A014528

/-! ## A014528.P16609032454295839789

`eq[A010121(n), A056926(A037314(n))]`
-/

namespace A014528.P16609032454295839789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A037314 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014528.P16609032454295839789

namespace A014528

/-- `eq[A010121(n), A056926(A037314(n))]` -/
def P16609032454295839789.Spec : Prop :=
  ∀ n, (P16609032454295839789.a n : ℤ) = A014528 n

end A014528

/-! ## A014528.P5005731196223863553

`eq[A010153(n), A056926(A037314(n))]`
-/

namespace A014528.P5005731196223863553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A037314 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014528.P5005731196223863553

namespace A014528

/-- `eq[A010153(n), A056926(A037314(n))]` -/
def P5005731196223863553.Spec : Prop :=
  ∀ n, (P5005731196223863553.a n : ℤ) = A014528 n

end A014528

/-! ## A014528.P14862773839517803760

`eq[A056926(A037314(n)), A107453(n+4)]`
-/

namespace A014528.P14862773839517803760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A037314 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107453 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014528.P14862773839517803760

namespace A014528

/-- `eq[A056926(A037314(n)), A107453(n+4)]` -/
def P14862773839517803760.Spec : Prop :=
  ∀ n, (P14862773839517803760.a n : ℤ) = A014528 n

end A014528

/-! ## A014528.P3365341915249368650

`eq[A121262(n), A303709(A289443(n))]`
-/

namespace A014528.P3365341915249368650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A289443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014528.P3365341915249368650

namespace A014528

/-- `eq[A121262(n), A303709(A289443(n))]` -/
def P3365341915249368650.Spec : Prop :=
  ∀ n, (P3365341915249368650.a n : ℤ) = A014528 n

end A014528

/-!
# A014531: Form array in which n-th row is obtained by expanding (1+x+x^2)^n and taking the 2nd column from the center.

The programs for A014531, the canonical program `A014531.P8663948611263005249` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014531 has offset 1).

The definition of A014531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014531.P8663948611263005249

`A002426(n+2)-A001006(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014531

/-- `A002426(n+2)-A001006(n+2)` -/
def P8663948611263005249.Spec : Prop :=
  ∀ n, P8663948611263005249.a n = A014531 (n + 1)

theorem P8663948611263005249.correct : P8663948611263005249.Spec := by
  intro n
  simp only [A014531, Nat.add_sub_cancel]

end A014531

/-! ## A014531.P11228956571445268832

`a(n-1)+A005717(n+1)+A014532(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A014531.P11228956571445268832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + A005717 (n + 1) + A014532 (n - 1)

end

end A014531.P11228956571445268832

namespace A014531

/-- `a(n-1)+A005717(n+1)+A014532(n-1)` -/
def P11228956571445268832.Spec : Prop :=
  ∀ n, P11228956571445268832.a n = A014531 (n + 1)

end A014531

/-! ## A014531.P5943401988333632254

`∑[A025180(n+2)]`
-/

namespace A014531.P5943401988333632254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025180 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014531.P5943401988333632254

namespace A014531

/-- `∑[A025180(n+2)]` -/
def P5943401988333632254.Spec : Prop :=
  ∀ n, P5943401988333632254.a n = A014531 (n + 1)

end A014531

/-! ## A014531.P13756541538151677246

`(n+2)/2*A002026(n+1)`
-/

namespace A014531.P13756541538151677246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A002026 (n + 1) : ℚ)

end

end A014531.P13756541538151677246

namespace A014531

/-- `(n+2)/2*A002026(n+1)` -/
def P13756541538151677246.Spec : Prop :=
  ∀ n, P13756541538151677246.a n = (A014531 (n + 1) : ℚ)

end A014531

/-! ## A014531.P4625606453721782127

`(n+2)/2*A244884(n+2)`
-/

namespace A014531.P4625606453721782127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A244884 (n + 2) : ℚ)

end

end A014531.P4625606453721782127

namespace A014531

/-- `(n+2)/2*A244884(n+2)` -/
def P4625606453721782127.Spec : Prop :=
  ∀ n, P4625606453721782127.a n = (A014531 (n + 1) : ℚ)

end A014531

/-! ## A014531.P9647692615506724367

`(n+2)/2*A105695(n+3)`
-/

namespace A014531.P9647692615506724367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A105695 (n + 3) : ℚ)

end

end A014531.P9647692615506724367

namespace A014531

/-- `(n+2)/2*A105695(n+3)` -/
def P9647692615506724367.Spec : Prop :=
  ∀ n, P9647692615506724367.a n = (A014531 (n + 1) : ℚ)

end A014531

/-! ## A014531.P11656281147348421452

`A025567(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A014531.P11656281147348421452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025567 (n + 1) - a (n - 1)

end

end A014531.P11656281147348421452

namespace A014531

/-- `A025567(n+1)-a(n-1)` -/
def P11656281147348421452.Spec : Prop :=
  ∀ n, P11656281147348421452.a n = A014531 (n + 1)

end A014531

/-! ## A014531.P13743976377865402719

`Δ[A005774(n+1)-A097893(n)]`
-/

namespace A014531.P13743976377865402719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 1) - A097893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014531.P13743976377865402719

namespace A014531

/-- `Δ[A005774(n+1)-A097893(n)]` -/
def P13743976377865402719.Spec : Prop :=
  ∀ n, P13743976377865402719.a n = A014531 (n + 1)

end A014531

/-! ## A014531.P11834881055280477151

`A005717(n+2)-record[A005043(n)]`
-/

namespace A014531.P11834881055280477151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014531.P11834881055280477151

namespace A014531

/-- `A005717(n+2)-record[A005043(n)]` -/
def P11834881055280477151.Spec : Prop :=
  ∀ n, P11834881055280477151.a n = A014531 (n + 1)

end A014531

/-! ## A014531.P16730710483182026018

`A026165(n+1)-A002426(n+1)`
-/

namespace A014531.P16730710483182026018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026165 (n + 1) - A002426 (n + 1)

end

end A014531.P16730710483182026018

namespace A014531

/-- `A026165(n+1)-A002426(n+1)` -/
def P16730710483182026018.Spec : Prop :=
  ∀ n, P16730710483182026018.a n = A014531 (n + 1)

end A014531

/-! ## A014531.P6632782076842207835

`A180282(n+2)-A140662(n+1)`
-/

namespace A014531.P6632782076842207835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180282 (n + 2) - A140662 (n + 1)

end

end A014531.P6632782076842207835

namespace A014531

/-- `A180282(n+2)-A140662(n+1)` -/
def P6632782076842207835.Spec : Prop :=
  ∀ n, P6632782076842207835.a n = A014531 (n + 1)

end A014531

/-! ## A014531.P2330788014757989279

`A005774(n+2)-A005717(n+2)`
-/

namespace A014531.P2330788014757989279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 2) - A005717 (n + 2)

end

end A014531.P2330788014757989279

namespace A014531

/-- `A005774(n+2)-A005717(n+2)` -/
def P2330788014757989279.Spec : Prop :=
  ∀ n, P2330788014757989279.a n = A014531 (n + 1)

end A014531

/-! ## A014531.P5426934489422193200

`A005717(n+2)-A005043(n+3)`
-/

namespace A014531.P5426934489422193200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 2) - A005043 (n + 3)

end

end A014531.P5426934489422193200

namespace A014531

/-- `A005717(n+2)-A005043(n+3)` -/
def P5426934489422193200.Spec : Prop :=
  ∀ n, P5426934489422193200.a n = A014531 (n + 1)

end A014531

/-! ## A014531.P9706708441120180881

`A025179(n+3)-A002426(n+2)`
-/

namespace A014531.P9706708441120180881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025179 (n + 3) - A002426 (n + 2)

end

end A014531.P9706708441120180881

namespace A014531

/-- `A025179(n+3)-A002426(n+2)` -/
def P9706708441120180881.Spec : Prop :=
  ∀ n, P9706708441120180881.a n = A014531 (n + 1)

end A014531

/-! ## A014531.P12029312010875816371

`Δ[A005774(n+1)]-A002426(n+1)`
-/

namespace A014531.P12029312010875816371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002426 (n + 1)

end

end A014531.P12029312010875816371

namespace A014531

/-- `Δ[A005774(n+1)]-A002426(n+1)` -/
def P12029312010875816371.Spec : Prop :=
  ∀ n, P12029312010875816371.a n = A014531 (n + 1)

end A014531

/-! ## A014531.P2967355764804349231

`(A025567(n+1)+A025180(n+2))/2`
-/

namespace A014531.P2967355764804349231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025567 (n + 1) + A025180 (n + 2) : ℚ) / 2

end

end A014531.P2967355764804349231

namespace A014531

/-- `(A025567(n+1)+A025180(n+2))/2` -/
def P2967355764804349231.Spec : Prop :=
  ∀ n, P2967355764804349231.a n = (A014531 (n + 1) : ℚ)

end A014531

/-! ## A014531.P6033194401415506909

`(A275208(n)+A275207(n))*(n+2)/2`
-/

namespace A014531.P6033194401415506909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A275208 n + A275207 n) * (n + 2 : ℤ) : ℚ) / 2

end

end A014531.P6033194401415506909

namespace A014531

/-- `(A275208(n)+A275207(n))*(n+2)/2` -/
def P6033194401415506909.Spec : Prop :=
  ∀ n, P6033194401415506909.a n = (A014531 (n + 1) : ℚ)

end A014531

/-! ## A014531.P1430001506832984862

`A005774(n+1)+A304011(n+2)-A304011(n+1)`
-/

namespace A014531.P1430001506832984862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 1) + (A304011 (n + 2) - A304011 (n + 1))

end

end A014531.P1430001506832984862

namespace A014531

/-- `A005774(n+1)+A304011(n+2)-A304011(n+1)` -/
def P1430001506832984862.Spec : Prop :=
  ∀ n, P1430001506832984862.a n = A014531 (n + 1)

end A014531

/-! ## A014531.P17754768136372923453

`A005717(n+3)-A005773(n+3)`
-/

namespace A014531.P17754768136372923453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 3) - A005773 (n + 3)

end

end A014531.P17754768136372923453

namespace A014531

/-- `A005717(n+3)-A005773(n+3)` -/
def P17754768136372923453.Spec : Prop :=
  ∀ n, P17754768136372923453.a n = A014531 (n + 1)

end A014531

/-! ## A014531.P1014748439518110177

`Δ[A005717(n+2)-A097893(n+1)]`
-/

namespace A014531.P1014748439518110177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 2) - A097893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014531.P1014748439518110177

namespace A014531

/-- `Δ[A005717(n+2)-A097893(n+1)]` -/
def P1014748439518110177.Spec : Prop :=
  ∀ n, P1014748439518110177.a n = A014531 (n + 1)

end A014531

/-!
# A014532: Form array in which n-th row is obtained by expanding (1+x+x^2)^n and taking the 3rd column from the center.

The programs for A014532, the canonical program `A014532.P5823161043713431904` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014532 has offset 1).

The definition of A014532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014532.P2724544548777111554

`∑[A025181(n+3)]`
-/

namespace A014532.P2724544548777111554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025181 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014532.P2724544548777111554

namespace A014532

/-- `∑[A025181(n+3)]` -/
def P2724544548777111554.Spec : Prop :=
  ∀ n, P2724544548777111554.a n = A014532 (n + 1)

end A014532

/-! ## A014532.P399113069469952296

`Δ[A304011(n+3)]`
-/

namespace A014532.P399113069469952296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304011 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014532.P399113069469952296

namespace A014532

/-- `Δ[A304011(n+3)]` -/
def P399113069469952296.Spec : Prop :=
  ∀ n, P399113069469952296.a n = A014532 (n + 1)

end A014532

/-! ## A014532.P10517817806896378904

`∑[∑[A026070(n+3)]]`
-/

namespace A014532.P10517817806896378904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014532.P10517817806896378904

namespace A014532

/-- `∑[∑[A026070(n+3)]]` -/
def P10517817806896378904.Spec : Prop :=
  ∀ n, P10517817806896378904.a n = A014532 (n + 1)

end A014532

/-! ## A014532.P16167219571087625542

`(n+3)/3*A005322(n+2)`
-/

namespace A014532.P16167219571087625542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 3 * (A005322 (n + 2) : ℚ)

end

end A014532.P16167219571087625542

namespace A014532

/-- `(n+3)/3*A005322(n+2)` -/
def P16167219571087625542.Spec : Prop :=
  ∀ n, P16167219571087625542.a n = (A014532 (n + 1) : ℚ)

end A014532

/-! ## A014532.P2874837153270869465

`A025568(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A014532.P2874837153270869465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025568 (n + 1) - a (n - 1)

end

end A014532.P2874837153270869465

namespace A014532

/-- `A025568(n+1)-a(n-1)` -/
def P2874837153270869465.Spec : Prop :=
  ∀ n, P2874837153270869465.a n = A014532 (n + 1)

end A014532

/-! ## A014532.P5823161043713431904

`A005717(n+3)-A002026(n+3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014532

/-- `A005717(n+3)-A002026(n+3)` -/
def P5823161043713431904.Spec : Prop :=
  ∀ n, P5823161043713431904.a n = A014532 (n + 1)

theorem P5823161043713431904.correct : P5823161043713431904.Spec := by
  intro n
  simp only [A014532, Nat.add_sub_cancel]

end A014532

/-! ## A014532.P18393428228681648669

`A025180(n+4)-A005717(n+3)`
-/

namespace A014532.P18393428228681648669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025180 (n + 4) - A005717 (n + 3)

end

end A014532.P18393428228681648669

namespace A014532

/-- `A025180(n+4)-A005717(n+3)` -/
def P18393428228681648669.Spec : Prop :=
  ∀ n, P18393428228681648669.a n = A014532 (n + 1)

end A014532

/-! ## A014532.P10827020588535787297

`A304011(n+4)-A304011(n+3)`
-/

namespace A014532.P10827020588535787297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304011 (n + 4) - A304011 (n + 3)

end

end A014532.P10827020588535787297

namespace A014532

/-- `A304011(n+4)-A304011(n+3)` -/
def P10827020588535787297.Spec : Prop :=
  ∀ n, P10827020588535787297.a n = A014532 (n + 1)

end A014532

/-! ## A014532.P17714740509278365577

`∑[(n+2)*A026122(n+2)]/4`
-/

namespace A014532.P17714740509278365577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A026122 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A014532.P17714740509278365577

namespace A014532

/-- `∑[(n+2)*A026122(n+2)]/4` -/
def P17714740509278365577.Spec : Prop :=
  ∀ n, P17714740509278365577.a n = (A014532 (n + 1) : ℚ)

end A014532

/-! ## A014532.P6026981141726700391

`A092107(∑[n+1]+3)`
-/

namespace A014532.P6026981141726700391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092107 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A014532.P6026981141726700391

namespace A014532

/-- `A092107(∑[n+1]+3)` -/
def P6026981141726700391.Spec : Prop :=
  ∀ n, P6026981141726700391.a n = A014532 (n + 1)

end A014532

/-! ## A014532.P5573985049568212183

`A094531(A167614(n+2))`
-/

namespace A014532.P5573985049568212183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (A167614 (n + 2)).toNat

end

end A014532.P5573985049568212183

namespace A014532

/-- `A094531(A167614(n+2))` -/
def P5573985049568212183.Spec : Prop :=
  ∀ n, P5573985049568212183.a n = A014532 (n + 1)

end A014532

/-! ## A014532.P3519081954055981356

`A111808(A055998(n+2))`
-/

namespace A014532.P3519081954055981356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111808 (A055998 (n + 2)).toNat

end

end A014532.P3519081954055981356

namespace A014532

/-- `A111808(A055998(n+2))` -/
def P3519081954055981356.Spec : Prop :=
  ∀ n, P3519081954055981356.a n = A014532 (n + 1)

end A014532

/-!
# A014533: Form array in which n-th row is obtained by expanding (1 + x + x^2)^n and taking the 4th column from the center.

The programs for A014533, the canonical program `A014533.P4665204797223841664` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014533 has offset 1).

The definition of A014533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014533.P18132294489470189221

`∑[A025182(n+4)]`
-/

namespace A014533.P18132294489470189221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025182 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014533.P18132294489470189221

namespace A014533

/-- `∑[A025182(n+4)]` -/
def P18132294489470189221.Spec : Prop :=
  ∀ n, P18132294489470189221.a n = A014533 (n + 1)

end A014533

/-! ## A014533.P14789647403215996947

`∑[∑[A026071(n+4)]]`
-/

namespace A014533.P14789647403215996947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026071 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014533.P14789647403215996947

namespace A014533

/-- `∑[∑[A026071(n+4)]]` -/
def P14789647403215996947.Spec : Prop :=
  ∀ n, P14789647403215996947.a n = A014533 (n + 1)

end A014533

/-! ## A014533.P4665204797223841664

`∑[∑[∑[A026087(n+4)]]]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A014533

/-- `∑[∑[∑[A026087(n+4)]]]` -/
def P4665204797223841664.Spec : Prop :=
  ∀ n, P4665204797223841664.a n = A014533 (n + 1)

theorem P4665204797223841664.correct : P4665204797223841664.Spec := by
  intro n
  simp only [A014533, Nat.add_sub_cancel]

end A014533

/-! ## A014533.P1294629873551270467

`A025181(n+5)-A014531(n+3)`
-/

namespace A014533.P1294629873551270467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025181 (n + 5) - A014531 (n + 3)

end

end A014533.P1294629873551270467

namespace A014533

/-- `A025181(n+5)-A014531(n+3)` -/
def P1294629873551270467.Spec : Prop :=
  ∀ n, P1294629873551270467.a n = A014533 (n + 1)

end A014533

/-! ## A014533.P4424979507335808218

`A027907((n+4)²+n)`
-/

namespace A014533.P4424979507335808218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 ((n + 4) ^ 2 + n)

end

end A014533.P4424979507335808218

namespace A014533

/-- `A027907((n+4)²+n)` -/
def P4424979507335808218.Spec : Prop :=
  ∀ n, P4424979507335808218.a n = A014533 (n + 1)

end A014533

/-! ## A014533.P1083421641889091989

`A169623(A187989(n+1)-n)`
-/

namespace A014533.P1083421641889091989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A187989 (n + 1) - (n : ℤ)).toNat

end

end A014533.P1083421641889091989

namespace A014533

/-- `A169623(A187989(n+1)-n)` -/
def P1083421641889091989.Spec : Prop :=
  ∀ n, P1083421641889091989.a n = A014533 (n + 1)

end A014533

/-! ## A014533.P1194557552418360794

`A078802(2*(n+1)*(n+3))`
-/

namespace A014533.P1194557552418360794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078802 (2 * ((n + 1) * (n + 3)))

end

end A014533.P1194557552418360794

namespace A014533

/-- `A078802(2*(n+1)*(n+3))` -/
def P1194557552418360794.Spec : Prop :=
  ∀ n, P1194557552418360794.a n = A014533 (n + 1)

end A014533

/-! ## A014533.P2573215069768306228

`A078803((n+1)²+(n+3)²)`
-/

namespace A014533.P2573215069768306228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078803 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A014533.P2573215069768306228

namespace A014533

/-- `A078803((n+1)²+(n+3)²)` -/
def P2573215069768306228.Spec : Prop :=
  ∀ n, P2573215069768306228.a n = A014533 (n + 1)

end A014533

/-! ## A014533.P348868761191315825

`A082601(A090288(n+1))`
-/

namespace A014533.P348868761191315825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A090288 (n + 1)).toNat

end

end A014533.P348868761191315825

namespace A014533

/-- `A082601(A090288(n+1))` -/
def P348868761191315825.Spec : Prop :=
  ∀ n, P348868761191315825.a n = A014533 (n + 1)

end A014533

/-! ## A014533.P7150700578913624300

`A071675(A099776(n+2)+1)`
-/

namespace A014533.P7150700578913624300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (A099776 (n + 2) + 1).toNat

end

end A014533.P7150700578913624300

namespace A014533

/-- `A071675(A099776(n+2)+1)` -/
def P7150700578913624300.Spec : Prop :=
  ∀ n, P7150700578913624300.a n = A014533 (n + 1)

end A014533

/-!
# A014534: Inverse of 525th cyclotomic polynomial.

The programs for A014534, there is no canonical definition to state claims against.
-/

/-! ## A014534.P929815042436880897

`A014744(A047287(n+1))`
-/

namespace A014534.P929815042436880897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014744 (A047287 (n + 1)).toNat

end

end A014534.P929815042436880897

/-!
# A014536: Inverse of 527th cyclotomic polynomial.

The programs for A014536, there is no canonical definition to state claims against.
-/

/-! ## A014536.P3127668568412260736

`A015063(n)*A033999(n)`
-/

namespace A014536.P3127668568412260736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015063 n * A033999 n

end

end A014536.P3127668568412260736

/-!
# A014537: Number of books required for n book-lengths of overhang in the harmonic book stacking problem. Sum_{i=1..a(n)} 1/i >= 2n and Sum_{i=1..a(n)-1} 1/i < 2n.

The programs for A014537, the canonical program `A014537.P15758308894467369716` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014537 has offset 1).

The definition of A014537 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002387, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014537.P15758308894467369716

`A002387(2*(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014537

/-- `A002387(2*(n+1))` -/
def P15758308894467369716.Spec : Prop :=
  ∀ n, P15758308894467369716.a n = A014537 (n + 1)

theorem P15758308894467369716.correct : P15758308894467369716.Spec := by
  intro n
  simp only [A014537, Nat.add_sub_cancel]

end A014537

/-! ## A014537.P14356417807462358012

`A065071(n+2)-1`
-/

namespace A014537.P14356417807462358012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065071 (n + 2) - 1

end

end A014537.P14356417807462358012

namespace A014537

/-- `A065071(n+2)-1` -/
def P14356417807462358012.Spec : Prop :=
  ∀ n, P14356417807462358012.a n = A014537 (n + 1)

end A014537

/-! ## A014537.P10157726947312660174

`∑[abs(Δ[A065071(n+1)])]`
-/

namespace A014537.P10157726947312660174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014537.P10157726947312660174

namespace A014537

/-- `∑[abs(Δ[A065071(n+1)])]` -/
def P10157726947312660174.Spec : Prop :=
  ∀ n, P10157726947312660174.a n = A014537 (n + 1)

end A014537

/-! ## A014537.P15732936692372924222

`record[A002387(A133265(n))]`
-/

namespace A014537.P15732936692372924222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014537.P15732936692372924222

namespace A014537

/-- `record[A002387(A133265(n))]` -/
def P15732936692372924222.Spec : Prop :=
  ∀ n, P15732936692372924222.a n = A014537 (n + 1)

end A014537

/-! ## A014537.P6492890627718577711

`record[A002387(2*A028242(n))]`
-/

namespace A014537.P6492890627718577711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (2 * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014537.P6492890627718577711

namespace A014537

/-- `record[A002387(2*A028242(n))]` -/
def P6492890627718577711.Spec : Prop :=
  ∀ n, P6492890627718577711.a n = A014537 (n + 1)

end A014537

/-! ## A014537.P8843966413077809634

`or(char[1], A002387(A005843(n+1)))`
-/

namespace A014537.P8843966413077809634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002387 (A005843 (n + 1)).toNat)

end

end A014537.P8843966413077809634

namespace A014537

/-- `or(char[1], A002387(A005843(n+1)))` -/
def P8843966413077809634.Spec : Prop :=
  ∀ n, P8843966413077809634.a n = A014537 (n + 1)

end A014537

/-! ## A014537.P11866403965887149034

`A002387(A103517(n))+A000038(n)`
-/

namespace A014537.P11866403965887149034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (A103517 n).toNat + A000038 n

end

end A014537.P11866403965887149034

namespace A014537

/-- `A002387(A103517(n))+A000038(n)` -/
def P11866403965887149034.Spec : Prop :=
  ∀ n, P11866403965887149034.a n = A014537 (n + 1)

end A014537

/-! ## A014537.P13799336003222594600

`A002387(A005843(n+1))/A178334(n+1)`
-/

namespace A014537.P13799336003222594600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002387 (A005843 (n + 1)).toNat : ℚ) / (A178334 (n + 1) : ℚ)

end

end A014537.P13799336003222594600

namespace A014537

/-- `A002387(A005843(n+1))/A178334(n+1)` -/
def P13799336003222594600.Spec : Prop :=
  ∀ n, P13799336003222594600.a n = (A014537 (n + 1) : ℚ)

end A014537

/-! ## A014537.P17948537355204059693

`A004080(2*(n+1))`
-/

namespace A014537.P17948537355204059693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004080 (2 * (n + 1))

end

end A014537.P17948537355204059693

namespace A014537

/-- `A004080(2*(n+1))` -/
def P17948537355204059693.Spec : Prop :=
  ∀ n, P17948537355204059693.a n = A014537 (n + 1)

end A014537

/-!
# A014540: Rectilinear crossing number of complete graph on n nodes.

The programs for A014540, there is no canonical definition to state claims against.
-/

/-! ## A014540.P15457803540821204774

`A307891(n+1)+∑[A028724(n)]`
-/

namespace A014540.P15457803540821204774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307891 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014540.P15457803540821204774

/-! ## A014540.P14957253415963708949

`A307891(n+1)+A000241(n+1)`
-/

namespace A014540.P14957253415963708949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307891 (n + 1) + A000241 (n + 1)

end

end A014540.P14957253415963708949

/-! ## A014540.P12745810370616471629

`A307891(n+1)+A307182(n+1)/4`
-/

namespace A014540.P12745810370616471629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307891 (n + 1) : ℚ) + (A307182 (n + 1) : ℚ) / 4

end

end A014540.P12745810370616471629

/-! ## A014540.P141705471590131752

`A307891(n+1)+A002265(A307182(n+1))`
-/

namespace A014540.P141705471590131752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307891 (n + 1) + A002265 (A307182 (n + 1)).toNat

end

end A014540.P141705471590131752

/-! ## A014540.P542094413984416113

`∑[A184158(A000055(n))]`
-/

namespace A014540.P542094413984416113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184158 (A000055 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014540.P542094413984416113

/-!
# A014541: Inverse of 532nd cyclotomic polynomial.

The programs for A014541, there is no canonical definition to state claims against.
-/

/-! ## A014541.P17955292542380025482

`A015073(A022998(n))`
-/

namespace A014541.P17955292542380025482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015073 (A022998 n).toNat

end

end A014541.P17955292542380025482

/-!
# A014542: Inverse of 533rd cyclotomic polynomial.

The programs for A014542, there is no canonical definition to state claims against.
-/

/-! ## A014542.P16485313171059396006

`A015075(n)*A033999(n)`
-/

namespace A014542.P16485313171059396006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015075 n * A033999 n

end

end A014542.P16485313171059396006

/-!
# A014543: Toroidal crossing number of complete graph.

The programs for A014543, there is no canonical definition to state claims against.
-/

/-! ## A014543.P592869357198870895

`A046074(A146781(n+1))-1`
-/

namespace A014543.P592869357198870895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A146781 (n + 1)).toNat - 1

end

end A014543.P592869357198870895

/-! ## A014543.P17120802389717121596

`∑[∑[A350251(A136768(n+1))]]`
-/

namespace A014543.P17120802389717121596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350251 (A136768 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014543.P17120802389717121596

/-! ## A014543.P10740332866864030351

`A248333(A261984(n)+A036987(n))`
-/

namespace A014543.P10740332866864030351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A261984 n + A036987 n).toNat

end

end A014543.P10740332866864030351

/-! ## A014543.P17811305225054700306

`A248333(A261984(n)+A080343(n))`
-/

namespace A014543.P17811305225054700306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A261984 n + A080343 n).toNat

end

end A014543.P17811305225054700306

/-! ## A014543.P8860668429921464052

`A248333(A261984(n)+A257000(n))`
-/

namespace A014543.P8860668429921464052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A261984 n + A257000 n).toNat

end

end A014543.P8860668429921464052

/-!
# A014544: Numbers k such that a cube can be divided into k subcubes.

The programs for A014544, there is no canonical definition to state claims against.
-/

/-! ## A014544.P2647932257171926958

`record[A118316(A118315(n+1))*A286935(n)]`
-/

namespace A014544.P2647932257171926958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118316 (A118315 (n + 1)).toNat * A286935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014544.P2647932257171926958

/-!
# A014545: Numbers k such that the k-th Euclid number A006862(k) = 1 + (Product of first k primes) is prime.

The programs for A014545, there is no canonical definition to state claims against.
-/

/-! ## A014545.P85411729148657395

`eq[1, A076689(A028310(n))]`
-/

namespace A014545.P85411729148657395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076689 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014545.P85411729148657395

/-! ## A014545.P5176190314807706593

`eq[1, A295741(n)]`
-/

namespace A014545.P5176190314807706593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014545.P5176190314807706593

/-! ## A014545.P10231565029900561465

`eq[1, A038711(n)]`
-/

namespace A014545.P10231565029900561465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038711 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014545.P10231565029900561465

/-! ## A014545.P7960861435288391619

`lt[A001222(A038711(n)+1), 2]`
-/

namespace A014545.P7960861435288391619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A038711 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014545.P7960861435288391619

/-! ## A014545.P16696872971898803510

`lt[A000203(A038711(n)+1), 6]`
-/

namespace A014545.P16696872971898803510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A038711 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014545.P16696872971898803510

/-!
# A014546: Primes in Sylvester's sequence A000058.

The programs for A014546, there is no canonical definition to state claims against.
-/

/-! ## A014546.P6532649674981699415

`record[A323605(n)]`
-/

namespace A014546.P6532649674981699415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014546.P6532649674981699415

/-!
# A014547: n-th Euler (secant, zig) number A000364(n) is prime.

The programs for A014547, there is no canonical definition to state claims against.
-/

/-! ## A014547.P9864858567139138722

`A103234(n+1)/2`
-/

namespace A014547.P9864858567139138722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103234 (n + 1) : ℚ) / 2

end

end A014547.P9864858567139138722

/-!
# A014548: Inverse of 539th cyclotomic polynomial.

The programs for A014548, there is no canonical definition to state claims against.
-/

/-! ## A014548.P3071060603953803402

`A014023(n)*A015087(n)`
-/

namespace A014548.P3071060603953803402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014023 n * A015087 n

end

end A014548.P3071060603953803402

/-!
# A014550: Binary reflected Gray code.

The programs for A014550, the canonical program `A014550.P16425550045670577789` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014550 has offset 0).

The definition of A014550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014550.P16425550045670577789

`A007088(xor(n, floor(n/2)))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014550

/-- `A007088(xor(n, floor(n/2)))` -/
def P16425550045670577789.Spec : Prop :=
  ∀ n, P16425550045670577789.a n = A014550 n

theorem P16425550045670577789.correct : P16425550045670577789.Spec := by
  intro n
  simp only [A014550]

end A014550

/-! ## A014550.P5618100733533063036

`A007088(A003188(n))`
-/

namespace A014550.P5618100733533063036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A003188 n).toNat

end

end A014550.P5618100733533063036

namespace A014550

/-- `A007088(A003188(n))` -/
def P5618100733533063036.Spec : Prop :=
  ∀ n, P5618100733533063036.a n = A014550 n

end A014550

/-! ## A014550.P11942750073198126427

`A007088(A269170(n)-A048735(n))`
-/

namespace A014550.P11942750073198126427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A269170 n - A048735 n).toNat

end

end A014550.P11942750073198126427

namespace A014550

/-- `A007088(A269170(n)-A048735(n))` -/
def P11942750073198126427.Spec : Prop :=
  ∀ n, P11942750073198126427.a n = A014550 n

end A014550

/-! ## A014550.P13775036938312610200

`A007088(and(2*n, -n)-A004526(n+1))`
-/

namespace A014550.P13775036938312610200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (2 * n : ℤ) (-(n : ℤ)) - A004526 (n + 1)).toNat

end

end A014550.P13775036938312610200

namespace A014550

/-- `A007088(and(2*n, -n)-A004526(n+1))` -/
def P13775036938312610200.Spec : Prop :=
  ∀ n, P13775036938312610200.a n = A014550 n

end A014550

/-! ## A014550.P8258142441407036256

`sqrt(A063009(xor(n, floor(n/2))))`
-/

namespace A014550.P8258142441407036256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat : ℝ)

end

end A014550.P8258142441407036256

namespace A014550

/-- `sqrt(A063009(xor(n, floor(n/2))))` -/
def P8258142441407036256.Spec : Prop :=
  ∀ n, P8258142441407036256.a n = (A014550 n : ℝ)

end A014550

/-! ## A014550.P14845050534763757286

`A007088(A032766(n)-A048735(2*n))`
-/

namespace A014550.P14845050534763757286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A032766 n - A048735 (2 * n)).toNat

end

end A014550.P14845050534763757286

namespace A014550

/-- `A007088(A032766(n)-A048735(2*n))` -/
def P14845050534763757286.Spec : Prop :=
  ∀ n, P14845050534763757286.a n = A014550 n

end A014550

/-! ## A014550.P1151387959813026254

`A185544(xor(or(1, n), Δ[n²]))`
-/

namespace A014550.P1151387959813026254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.xor (Nat.lor 1 n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A014550.P1151387959813026254

namespace A014550

/-- `A185544(xor(or(1, n), Δ[n²]))` -/
def P1151387959813026254.Spec : Prop :=
  ∀ n, P1151387959813026254.a n = A014550 n

end A014550

/-! ## A014550.P4128396329275978822

`A185544(2*A003188(n))`
-/

namespace A014550.P4128396329275978822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A003188 n).toNat

end

end A014550.P4128396329275978822

namespace A014550

/-- `A185544(2*A003188(n))` -/
def P4128396329275978822.Spec : Prop :=
  ∀ n, P4128396329275978822.a n = A014550 n

end A014550

/-! ## A014550.P11389473567862620739

`A007088(A110654(xor(n+1, 2*n+1)))`
-/

namespace A014550.P11389473567862620739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A110654 (Nat.xor (n + 1) (2 * n + 1))).toNat

end

end A014550.P11389473567862620739

namespace A014550

/-- `A007088(A110654(xor(n+1, 2*n+1)))` -/
def P11389473567862620739.Spec : Prop :=
  ∀ n, P11389473567862620739.a n = A014550 n

end A014550

/-! ## A014550.P3583486353134147098

`A007090(A163237(∑[n]))`
-/

namespace A014550.P3583486353134147098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A163237 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A014550.P3583486353134147098

namespace A014550

/-- `A007090(A163237(∑[n]))` -/
def P3583486353134147098.Spec : Prop :=
  ∀ n, P3583486353134147098.a n = A014550 n

end A014550

/-!
# A014551: Jacobsthal-Lucas numbers.

The programs for A014551, the canonical program `A014551.P15201545406723710920` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014551 has offset 0).

The definition of A014551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014551.P15201545406723710920

`2^n+(-1)^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014551

/-- `2^n+(-1)^n` -/
def P15201545406723710920.Spec : Prop :=
  ∀ n, P15201545406723710920.a n = A014551 n

theorem P15201545406723710920.correct : P15201545406723710920.Spec := by
  intro n
  simp only [A014551]

end A014551

/-!
# A014552: Number of solutions to Langford (or Langford-Skolem) problem (up to reversal of the order).

The programs for A014552, there is no canonical definition to state claims against.
-/

/-! ## A014552.P16867935838546610

`A176127(n+1)/2`
-/

namespace A014552.P16867935838546610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176127 (n + 1) : ℚ) / 2

end

end A014552.P16867935838546610

/-! ## A014552.P16962880412700991198

`2^A163805(A016813(n))*A176127(n+1)`
-/

namespace A014552.P16962880412700991198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A163805 (A016813 n).toNat : ℤ) * (A176127 (n + 1) : ℚ)

end

end A014552.P16962880412700991198

/-! ## A014552.P3996649252828166728

`A014682(A176127(n+1))`
-/

namespace A014552.P3996649252828166728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A176127 (n + 1)).toNat

end

end A014552.P3996649252828166728

/-! ## A014552.P16443756543243993878

`A273943(lcm(2, A176127(n+1)))`
-/

namespace A014552.P16443756543243993878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A176127 (n + 1)))

end

end A014552.P16443756543243993878

/-! ## A014552.P10477903892404659576

`A273943(A176127(n+1)-char[3])`
-/

namespace A014552.P10477903892404659576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A176127 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A014552.P10477903892404659576

/-!
# A014555: Inverse of 546th cyclotomic polynomial.

The programs for A014555, there is no canonical definition to state claims against.
-/

/-! ## A014555.P2573848010377670301

`A014282(n)*A033999(n)`
-/

namespace A014555.P2573848010377670301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014282 n * A033999 n

end

end A014555.P2573848010377670301

/-!
# A014557: Multiplicity of K_3 in K_n.

The programs for A014557, the canonical program `A014557.P9873964377881165823` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014557 has offset 0).

The definition of A014557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014557.P9873964377881165823

`n*(n-1)*(n-2)/6-floor(n/2*floor(((n-1)/2)²))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014557

/-- `n*(n-1)*(n-2)/6-floor(n/2*floor(((n-1)/2)²))` -/
def P9873964377881165823.Spec : Prop :=
  ∀ n, P9873964377881165823.a n = (A014557 n : ℚ)

end A014557

/-! ## A014557.P9765474395277507517

`∑[A007590(∑[char[2*(n+2)]])]`
-/

namespace A014557.P9765474395277507517
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014557.P9765474395277507517

namespace A014557

/-- `∑[A007590(∑[char[2*(n+2)]])]` -/
def P9765474395277507517.Spec : Prop :=
  ∀ n, P9765474395277507517.a n = A014557 n

end A014557

/-! ## A014557.P14993455809261961504

`2*∑[A024165(3*(n+1))]`
-/

namespace A014557.P14993455809261961504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024165 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014557.P14993455809261961504

namespace A014557

/-- `2*∑[A024165(3*(n+1))]` -/
def P14993455809261961504.Spec : Prop :=
  ∀ n, P14993455809261961504.a n = A014557 n

end A014557

/-! ## A014557.P6796741438718851886

`∑[A004526((1-A004526(n))²)]`
-/

namespace A014557.P6796741438718851886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((1 - A004526 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014557.P6796741438718851886

namespace A014557

/-- `∑[A004526((1-A004526(n))²)]` -/
def P6796741438718851886.Spec : Prop :=
  ∀ n, P6796741438718851886.a n = A014557 n

end A014557

/-! ## A014557.P6733926066806254601

`∑[A142150(A137932(floor(n/2)))]`
-/

namespace A014557.P6733926066806254601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A137932 ⌊(n : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014557.P6733926066806254601

namespace A014557

/-- `∑[A142150(A137932(floor(n/2)))]` -/
def P6733926066806254601.Spec : Prop :=
  ∀ n, P6733926066806254601.a n = A014557 n

end A014557

/-! ## A014557.P15627715550059118505

`A004526(∑[A137932(floor(n/2))])`
-/

namespace A014557.P15627715550059118505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137932 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014557.P15627715550059118505

namespace A014557

/-- `A004526(∑[A137932(floor(n/2))])` -/
def P15627715550059118505.Spec : Prop :=
  ∀ n, P15627715550059118505.a n = A014557 n

end A014557

/-!
# A014560: Inverse of 551st cyclotomic polynomial.

The programs for A014560, there is no canonical definition to state claims against.
-/

/-! ## A014560.P10084121136983846056

`A015111(n)*A033999(n)`
-/

namespace A014560.P10084121136983846056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015111 n * A033999 n

end

end A014560.P10084121136983846056

/-!
# A014561: Numbers k giving rise to prime quadruples (30k+11, 30k+13, 30k+17, 30k+19).

The programs for A014561, there is no canonical definition to state claims against.
-/

/-! ## A014561.P13780609169471306036

`A061668(n+1)-1`
-/

namespace A014561.P13780609169471306036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061668 (n + 1) - 1

end

end A014561.P13780609169471306036

/-! ## A014561.P15465129263201451856

`(A007811(n+1)-1)/3`
-/

namespace A014561.P15465129263201451856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007811 (n + 1) - 1 : ℚ) / 3

end

end A014561.P15465129263201451856

/-! ## A014561.P16038982764588083086

`floor(A007530(n+2)/30)`
-/

namespace A014561.P16038982764588083086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007530 (n + 2) : ℚ) / 30⌋

end

end A014561.P16038982764588083086

/-! ## A014561.P17509743368176936365

`∑[A159910(n+1)]`
-/

namespace A014561.P17509743368176936365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014561.P17509743368176936365

/-! ## A014561.P18159531429021092626

`floor(A112540(n+1)/2)`
-/

namespace A014561.P18159531429021092626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112540 (n + 1) : ℚ) / 2⌋

end

end A014561.P18159531429021092626

/-! ## A014561.P18356860140240660398

`floor(A007811(n+1)/3)`
-/

namespace A014561.P18356860140240660398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007811 (n + 1) : ℚ) / 3⌋

end

end A014561.P18356860140240660398

/-! ## A014561.P2985187307411222103

`floor(A178082(n+1)/6)`
-/

namespace A014561.P2985187307411222103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178082 (n + 1) : ℚ) / 6⌋

end

end A014561.P2985187307411222103

/-! ## A014561.P1932094295011333789

`(A064975(n+1)-2)/3`
-/

namespace A014561.P1932094295011333789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064975 (n + 1) - 2 : ℚ) / 3

end

end A014561.P1932094295011333789

/-! ## A014561.P18002768740698267936

`A007811(n+1)-A112540(n+1)`
-/

namespace A014561.P18002768740698267936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007811 (n + 1) - A112540 (n + 1)

end

end A014561.P18002768740698267936

/-! ## A014561.P988417660818172634

`A064975(n+1)%A061668(n+1)`
-/

namespace A014561.P988417660818172634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064975 (n + 1)) (A061668 (n + 1))

end

end A014561.P988417660818172634

/-! ## A014561.P16858238390759327381

`A112540(n+1)%A061668(n+1)`
-/

namespace A014561.P16858238390759327381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112540 (n + 1)) (A061668 (n + 1))

end

end A014561.P16858238390759327381

/-! ## A014561.P16216795806888926976

`A064975(n+1)-(A112540(n+1)+1)`
-/

namespace A014561.P16216795806888926976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064975 (n + 1) - (A112540 (n + 1) + 1)

end

end A014561.P16216795806888926976

/-! ## A014561.P10633069717176161341

`(A115095(n+2)-2)/3`
-/

namespace A014561.P10633069717176161341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115095 (n + 2) - 2 : ℚ) / 3

end

end A014561.P10633069717176161341

/-! ## A014561.P10564977392448512279

`∩[A089160(n+1), A089161(n+1)]`
-/

namespace A014561.P10564977392448512279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014561.P10564977392448512279

/-! ## A014561.P9988073150374381998

`A014682(A112540(n+1)-1)`
-/

namespace A014561.P9988073150374381998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A112540 (n + 1) - 1).toNat

end

end A014561.P9988073150374381998

/-!
# A014563: a(n+1) is the smallest number > a(n) such that the digits of a(n)^2 are all (with multiplicity) contained in the digits of a(n+1)^2, with a(0)=1.

The programs for A014563, there is no canonical definition to state claims against.
-/

/-! ## A014563.P17382345301046930602

`sqrt(A067713(n))`
-/

namespace A014563.P17382345301046930602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067713 n : ℝ)

end

end A014563.P17382345301046930602

/-! ## A014563.P15703149715155357888

`root(A067713(n), 2)%A014206(n)²`
-/

namespace A014563.P15703149715155357888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A067713 n : ℝ) ^ (1 / (2 : ℝ)))) (A014206 n ^ 2)

end

end A014563.P15703149715155357888

/-! ## A014563.P2630386422739125866

`root(A067713(n), A001316(A001316(n)))`
-/

namespace A014563.P2630386422739125866
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067713 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A014563.P2630386422739125866

/-! ## A014563.P14463328374728598800

`A000035(2*n)+root(A067713(n), 2)`
-/

namespace A014563.P14463328374728598800
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000035 (2 * n) : ℝ) + (A067713 n : ℝ) ^ (1 / (2 : ℝ))

end

end A014563.P14463328374728598800

/-! ## A014563.P14356989974806100311

`root(A067713(n), 2)*A001511(2*n+1)`
-/

namespace A014563.P14356989974806100311
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067713 n : ℝ) ^ (1 / (2 : ℝ)) * (A001511 (2 * n + 1) : ℝ)

end

end A014563.P14356989974806100311

/-! ## A014563.P14416432298960597045

`root(A067713(n), ratio[A000079(n)])`
-/

namespace A014563.P14416432298960597045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067713 n : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A014563.P14416432298960597045

/-! ## A014563.P3114588083930251994

`root(A067713(n), 2)%A306672(n)`
-/

namespace A014563.P3114588083930251994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A067713 n : ℝ) ^ (1 / (2 : ℝ)))) (A306672 n)

end

end A014563.P3114588083930251994

/-! ## A014563.P1430335847626733278

`root(A067713(n), 2)*A007318(A000217(n))`
-/

namespace A014563.P1430335847626733278
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067713 n : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (A000217 n).toNat : ℝ)

end

end A014563.P1430335847626733278

/-!
# A014564: Inverse of 555th cyclotomic polynomial.

The programs for A014564, there is no canonical definition to state claims against.
-/

/-! ## A014564.P12261187576842806583

`A015119(n)*A033999(n)`
-/

namespace A014564.P12261187576842806583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015119 n * A033999 n

end

end A014564.P12261187576842806583

/-!
# A014565: Decimal expansion of rabbit constant.

The programs for A014565, there is no canonical definition to state claims against.
-/

/-! ## A014565.P10219328700134694410

`9-A228249(n)`
-/

namespace A014565.P10219328700134694410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A228249 n

end

end A014565.P10219328700134694410

/-! ## A014565.P17484411778419018859

`A073115(n+1)`
-/

namespace A014565.P17484411778419018859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073115 (n + 1 + 1)

end

end A014565.P17484411778419018859

/-! ## A014565.P12255093982028161774

`A081544(n+1)`
-/

namespace A014565.P12255093982028161774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081544 (n + 1 + 1)

end

end A014565.P12255093982028161774

/-! ## A014565.P10484417043081012184

`Δ[A023444(∑[A073115(n)])]`
-/

namespace A014565.P10484417043081012184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073115 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014565.P10484417043081012184

/-! ## A014565.P10994438912029029316

`Δ[A028310(∑[A073115(n)])]`
-/

namespace A014565.P10994438912029029316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073115 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014565.P10994438912029029316

/-!
# A014566: Sierpiński numbers of the first kind: n^n + 1.

The programs for A014566, the canonical program `A014566.P17220125683731441908` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014566 has offset 0).

The definition of A014566 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n+1` (program `A014566.P17220125683731441908`, by `A014566.P17220125683731441908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014566.P17220125683731441908

`n^n+1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014566

/-- `n^n+1` -/
def P17220125683731441908.Spec : Prop :=
  ∀ n, (P17220125683731441908.a n : ℤ) = A014566 n

theorem P17220125683731441908.correct : P17220125683731441908.Spec := by
  intro n
  simp only [A014566]

end A014566

/-!
# A014567: Numbers k such that k and sigma(k) are relatively prime, where sigma(k) = sum of divisors of k (A000203).

The programs for A014567, the canonical program `A014567.P6675992213739059239` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014567 has offset 1).

The definition of A014567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014567.P6675992213739059239

`eq[1, A325964(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A014567

/-- `eq[1, A325964(n+1)]+1` -/
def P6675992213739059239.Spec : Prop :=
  ∀ n, (P6675992213739059239.a n : ℤ) = A014567 (n + 1)

theorem P6675992213739059239.correct : P6675992213739059239.Spec := by
  intro n
  simp only [A014567, Nat.add_sub_cancel]

end A014567

/-! ## A014567.P8087508974048509153

`eq[1, A356156(n+1)]+1`
-/

namespace A014567.P8087508974048509153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356156 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014567.P8087508974048509153

namespace A014567

/-- `eq[1, A356156(n+1)]+1` -/
def P8087508974048509153.Spec : Prop :=
  ∀ n, (P8087508974048509153.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P4907160911653050900

`eq[1, A356157(n+1)]+1`
-/

namespace A014567.P4907160911653050900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356157 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014567.P4907160911653050900

namespace A014567

/-- `eq[1, A356157(n+1)]+1` -/
def P4907160911653050900.Spec : Prop :=
  ∀ n, (P4907160911653050900.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P1998700549498475669

`lt[A325817(n+1), 1]+1`
-/

namespace A014567.P1998700549498475669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A014567.P1998700549498475669

namespace A014567

/-- `lt[A325817(n+1), 1]+1` -/
def P1998700549498475669.Spec : Prop :=
  ∀ n, (P1998700549498475669.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P4208536790209461649

`lt[A341523(n+1), 1]+1`
-/

namespace A014567.P4208536790209461649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341523 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A014567.P4208536790209461649

namespace A014567

/-- `lt[A341523(n+1), 1]+1` -/
def P4208536790209461649.Spec : Prop :=
  ∀ n, (P4208536790209461649.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P5419579629454137333

`record[gcd(n+1, A325967(n+1))]`
-/

namespace A014567.P5419579629454137333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A325967 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014567.P5419579629454137333

namespace A014567

/-- `record[gcd(n+1, A325967(n+1))]` -/
def P5419579629454137333.Spec : Prop :=
  ∀ n, (P5419579629454137333.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P14142924643311298470

`eq[1, gcd(n, a(n-1)*A000203(n))]` with `a(0)=0`
-/

namespace A014567.P14142924643311298470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.gcd (n : ℤ) ((f2 (n - 1) : ℤ) * A000203 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014567.P14142924643311298470

namespace A014567

/-- `eq[1, gcd(n, a(n-1)*A000203(n))]` -/
def P14142924643311298470.Spec : Prop :=
  ∀ n, (P14142924643311298470.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P1801776202082524324

`∪[A000961(n+1), A003624(n+1)]`
-/

namespace A014567.P1801776202082524324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014567.P1801776202082524324

namespace A014567

/-- `∪[A000961(n+1), A003624(n+1)]` -/
def P1801776202082524324.Spec : Prop :=
  ∀ n, (P1801776202082524324.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P9550250979525509625

`∪[A003624(n+1), A008578(n+1)]`
-/

namespace A014567.P9550250979525509625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014567.P9550250979525509625

namespace A014567

/-- `∪[A003624(n+1), A008578(n+1)]` -/
def P9550250979525509625.Spec : Prop :=
  ∀ n, (P9550250979525509625.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P9457186751936296430

`∪[A003624(n+1), A033946(n+1)]`
-/

namespace A014567.P9457186751936296430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014567.P9457186751936296430

namespace A014567

/-- `∪[A003624(n+1), A033946(n+1)]` -/
def P9457186751936296430.Spec : Prop :=
  ∀ n, (P9457186751936296430.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P14317502484281112690

`∪[A003624(n+1), A046022(n+1)]`
-/

namespace A014567.P14317502484281112690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014567.P14317502484281112690

namespace A014567

/-- `∪[A003624(n+1), A046022(n+1)]` -/
def P14317502484281112690.Spec : Prop :=
  ∀ n, (P14317502484281112690.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P4094332659538018475

`∪[A003624(n+1), A067126(n+1)]`
-/

namespace A014567.P4094332659538018475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014567.P4094332659538018475

namespace A014567

/-- `∪[A003624(n+1), A067126(n+1)]` -/
def P4094332659538018475.Spec : Prop :=
  ∀ n, (P4094332659538018475.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P5998194942771144121

`∪[A003624(n+1), A074583(n+1)]`
-/

namespace A014567.P5998194942771144121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014567.P5998194942771144121

namespace A014567

/-- `∪[A003624(n+1), A074583(n+1)]` -/
def P5998194942771144121.Spec : Prop :=
  ∀ n, (P5998194942771144121.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P5559623486885276829

`∪[A084400(n+1), A003624(n+1)]`
-/

namespace A014567.P5559623486885276829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014567.P5559623486885276829

namespace A014567

/-- `∪[A084400(n+1), A003624(n+1)]` -/
def P5559623486885276829.Spec : Prop :=
  ∀ n, (P5559623486885276829.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P5273937476609979102

`∪[A000961(n+1), A095738(n+1)]`
-/

namespace A014567.P5273937476609979102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014567.P5273937476609979102

namespace A014567

/-- `∪[A000961(n+1), A095738(n+1)]` -/
def P5273937476609979102.Spec : Prop :=
  ∀ n, (P5273937476609979102.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P13235381642910085437

`∪[A003624(n+1), A115975(n+1)]`
-/

namespace A014567.P13235381642910085437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014567.P13235381642910085437

namespace A014567

/-- `∪[A003624(n+1), A115975(n+1)]` -/
def P13235381642910085437.Spec : Prop :=
  ∀ n, (P13235381642910085437.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P17018513363797334668

`∪[A003624(n+1), A164336(n+1)]`
-/

namespace A014567.P17018513363797334668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014567.P17018513363797334668

namespace A014567

/-- `∪[A003624(n+1), A164336(n+1)]` -/
def P17018513363797334668.Spec : Prop :=
  ∀ n, (P17018513363797334668.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P17664972002751988162

`lt[n, A325959(n+1)]+1`
-/

namespace A014567.P17664972002751988162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A014567.P17664972002751988162

namespace A014567

/-- `lt[n, A325959(n+1)]+1` -/
def P17664972002751988162.Spec : Prop :=
  ∀ n, (P17664972002751988162.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P5346102922672666006

`eq[1, A082068(n+1)]+1`
-/

namespace A014567.P5346102922672666006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014567.P5346102922672666006

namespace A014567

/-- `eq[1, A082068(n+1)]+1` -/
def P5346102922672666006.Spec : Prop :=
  ∀ n, (P5346102922672666006.a n : ℤ) = A014567 (n + 1)

end A014567

/-! ## A014567.P3855974460698027463

`eq[1, A306682(n+1)]+1`
-/

namespace A014567.P3855974460698027463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014567.P3855974460698027463

namespace A014567

/-- `eq[1, A306682(n+1)]+1` -/
def P3855974460698027463.Spec : Prop :=
  ∀ n, (P3855974460698027463.a n : ℤ) = A014567 (n + 1)

end A014567

/-!
# A014568: Inverse of 559th cyclotomic polynomial.

The programs for A014568, there is no canonical definition to state claims against.
-/

/-! ## A014568.P15637714012567876352

`A015127(n)*A033999(n)`
-/

namespace A014568.P15637714012567876352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015127 n * A033999 n

end

end A014568.P15637714012567876352

/-!
# A014570: Inverse of 561st cyclotomic polynomial.

The programs for A014570, there is no canonical definition to state claims against.
-/

/-! ## A014570.P8212882753706669653

`A015131(n)*A033999(n)`
-/

namespace A014570.P8212882753706669653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015131 n * A033999 n

end

end A014570.P8212882753706669653

/-!
# A014573: Smallest k such that phi(x) = k has exactly n solutions, n>=0 with Carmichael conjecture.

The programs for A014573, there is no canonical definition to state claims against.
-/

/-! ## A014573.P15155156001976878128

`A007374(A233583(n+1))+A000038(n)-char[1]`
-/

namespace A014573.P15155156001976878128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007374 (A233583 (n + 1)).toNat + A000038 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A014573.P15155156001976878128

/-!
# A014574: Average of twin prime pairs.

The programs for A014574, the canonical program `A014574.P4587706211531852143` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014574 has offset 1).

The definition of A014574 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129297, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014574.P9593637876673059135

`2*A040040(n+1)`
-/

namespace A014574.P9593637876673059135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1)

end

end A014574.P9593637876673059135

namespace A014574

/-- `2*A040040(n+1)` -/
def P9593637876673059135.Spec : Prop :=
  ∀ n, P9593637876673059135.a n = A014574 (n + 1)

end A014574

/-! ## A014574.P241948059120028079

`A054735(n+1)/2`
-/

namespace A014574.P241948059120028079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) : ℚ) / 2

end

end A014574.P241948059120028079

namespace A014574

/-- `A054735(n+1)/2` -/
def P241948059120028079.Spec : Prop :=
  ∀ n, P241948059120028079.a n = (A014574 (n + 1) : ℚ)

end A014574

/-! ## A014574.P5871494439137058752

`A111046(n+1)/4`
-/

namespace A014574.P5871494439137058752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111046 (n + 1) : ℚ) / 4

end

end A014574.P5871494439137058752

namespace A014574

/-- `A111046(n+1)/4` -/
def P5871494439137058752.Spec : Prop :=
  ∀ n, P5871494439137058752.a n = (A014574 (n + 1) : ℚ)

end A014574

/-! ## A014574.P16776566521061249048

`(A001359(n+1)+A006512(n+1))/2`
-/

namespace A014574.P16776566521061249048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) + A006512 (n + 1) : ℚ) / 2

end

end A014574.P16776566521061249048

namespace A014574

/-- `(A001359(n+1)+A006512(n+1))/2` -/
def P16776566521061249048.Spec : Prop :=
  ∀ n, P16776566521061249048.a n = (A014574 (n + 1) : ℚ)

end A014574

/-! ## A014574.P4587706211531852143

`A129297(n+5)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A014574

/-- `A129297(n+5)` -/
def P4587706211531852143.Spec : Prop :=
  ∀ n, P4587706211531852143.a n = A014574 (n + 1)

theorem P4587706211531852143.correct : P4587706211531852143.Spec := by
  intro n
  simp only [A014574, Nat.add_sub_cancel]

end A014574

/-! ## A014574.P6355307006114595240

`sqrt(A075369(n+1))`
-/

namespace A014574.P6355307006114595240
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 1) : ℝ)

end

end A014574.P6355307006114595240

namespace A014574

/-- `sqrt(A075369(n+1))` -/
def P6355307006114595240.Spec : Prop :=
  ∀ n, P6355307006114595240.a n = (A014574 (n + 1) : ℝ)

end A014574

/-! ## A014574.P11015586045729672937

`1+A001359(n+1)`
-/

namespace A014574.P11015586045729672937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001359 (n + 1)

end

end A014574.P11015586045729672937

namespace A014574

/-- `1+A001359(n+1)` -/
def P11015586045729672937.Spec : Prop :=
  ∀ n, P11015586045729672937.a n = A014574 (n + 1)

end A014574

/-! ## A014574.P7017571196105210936

`A006512(n+1)-1`
-/

namespace A014574.P7017571196105210936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 1

end

end A014574.P7017571196105210936

namespace A014574

/-- `A006512(n+1)-1` -/
def P7017571196105210936.Spec : Prop :=
  ∀ n, P7017571196105210936.a n = A014574 (n + 1)

end A014574

/-! ## A014574.P8895899738731728

`A144834(n+1)+2`
-/

namespace A014574.P8895899738731728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + 2

end

end A014574.P8895899738731728

namespace A014574

/-- `A144834(n+1)+2` -/
def P8895899738731728.Spec : Prop :=
  ∀ n, P8895899738731728.a n = A014574 (n + 1)

end A014574

/-! ## A014574.P14335095014037870407

`floor(sqrt(A126251(n+1)))`
-/

namespace A014574.P14335095014037870407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A126251 (n + 1))

end

end A014574.P14335095014037870407

namespace A014574

/-- `floor(sqrt(A126251(n+1)))` -/
def P14335095014037870407.Spec : Prop :=
  ∀ n, P14335095014037870407.a n = A014574 (n + 1)

end A014574

/-! ## A014574.P1545438014142138064

`floor(sqrt(A135286(n+1)))`
-/

namespace A014574.P1545438014142138064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A135286 (n + 1))

end

end A014574.P1545438014142138064

namespace A014574

/-- `floor(sqrt(A135286(n+1)))` -/
def P1545438014142138064.Spec : Prop :=
  ∀ n, P1545438014142138064.a n = A014574 (n + 1)

end A014574

/-! ## A014574.P6805368357405100953

`ceil(sqrt(A037074(n+1)))`
-/

namespace A014574.P6805368357405100953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A037074 (n + 1) : ℝ)⌉

end

end A014574.P6805368357405100953

namespace A014574

/-- `ceil(sqrt(A037074(n+1)))` -/
def P6805368357405100953.Spec : Prop :=
  ∀ n, P6805368357405100953.a n = A014574 (n + 1)

end A014574

/-! ## A014574.P849630848030064349

`ceil(sqrt(A120875(n+1)))`
-/

namespace A014574.P849630848030064349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A120875 (n + 1) : ℝ)⌉

end

end A014574.P849630848030064349

namespace A014574

/-- `ceil(sqrt(A120875(n+1)))` -/
def P849630848030064349.Spec : Prop :=
  ∀ n, P849630848030064349.a n = A014574 (n + 1)

end A014574

/-! ## A014574.P9968682119632894294

`sqrt(A108604(n+1))-1`
-/

namespace A014574.P9968682119632894294
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A108604 (n + 1) : ℝ) - 1

end

end A014574.P9968682119632894294

namespace A014574

/-- `sqrt(A108604(n+1))-1` -/
def P9968682119632894294.Spec : Prop :=
  ∀ n, P9968682119632894294.a n = (A014574 (n + 1) : ℝ)

end A014574

/-! ## A014574.P9727472812907201983

`A053319(n)+a(n-1)` with `a(0)=4`
-/

namespace A014574.P9727472812907201983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A053319 n + a (n - 1)

end

end A014574.P9727472812907201983

namespace A014574

/-- `A053319(n)+a(n-1)` -/
def P9727472812907201983.Spec : Prop :=
  ∀ n, P9727472812907201983.a n = A014574 (n + 1)

end A014574

/-! ## A014574.P8441119069406808684

`A111166(n+1)+A054977(n)`
-/

namespace A014574.P8441119069406808684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1) + A054977 n

end

end A014574.P8441119069406808684

namespace A014574

/-- `A111166(n+1)+A054977(n)` -/
def P8441119069406808684.Spec : Prop :=
  ∀ n, P8441119069406808684.a n = A014574 (n + 1)

end A014574

/-! ## A014574.P18439800386054286472

`A176915(n+1)+A078571(n+1)`
-/

namespace A014574.P18439800386054286472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176915 (n + 1) + A078571 (n + 1)

end

end A014574.P18439800386054286472

namespace A014574

/-- `A176915(n+1)+A078571(n+1)` -/
def P18439800386054286472.Spec : Prop :=
  ∀ n, P18439800386054286472.a n = A014574 (n + 1)

end A014574

/-! ## A014574.P268040998477693747

`A164274(n+1)-A007510(n+1)`
-/

namespace A014574.P268040998477693747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164274 (n + 1) - A007510 (n + 1)

end

end A014574.P268040998477693747

namespace A014574

/-- `A164274(n+1)-A007510(n+1)` -/
def P268040998477693747.Spec : Prop :=
  ∀ n, P268040998477693747.a n = A014574 (n + 1)

end A014574

/-! ## A014574.P14430368126416431711

`A126248(n+1)/A037074(n+1)`
-/

namespace A014574.P14430368126416431711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126248 (n + 1) : ℚ) / (A037074 (n + 1) : ℚ)

end

end A014574.P14430368126416431711

namespace A014574

/-- `A126248(n+1)/A037074(n+1)` -/
def P14430368126416431711.Spec : Prop :=
  ∀ n, P14430368126416431711.a n = (A014574 (n + 1) : ℚ)

end A014574

/-! ## A014574.P8179185072380732900

`A120875(n+1)%A006512(n+1)`
-/

namespace A014574.P8179185072380732900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120875 (n + 1)) (A006512 (n + 1))

end

end A014574.P8179185072380732900

namespace A014574

/-- `A120875(n+1)%A006512(n+1)` -/
def P8179185072380732900.Spec : Prop :=
  ∀ n, P8179185072380732900.a n = A014574 (n + 1)

end A014574

/-!
# A014575: Vampire numbers (definition 2): numbers n with an even number of digits which have a factorization n = i*j where i and j have the same number of digits and the multiset of the digits of n coincides with the multiset of the digits of i and j.

The programs for A014575, there is no canonical definition to state claims against.
-/

/-! ## A014575.P12740741226980640672

`∪[A048933(n+1)*A048934(n+1), A048938(n+1)]`
-/

namespace A014575.P12740741226980640672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048933 (n + 1) * A048934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014575.P12740741226980640672

/-! ## A014575.P4146243200207678240

`A048933(n+1)*A048934(n+1)`
-/

namespace A014575.P4146243200207678240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048933 (n + 1) * A048934 (n + 1)

end

end A014575.P4146243200207678240

/-!
# A014577: The regular paper-folding sequence (or dragon curve sequence). Alphabet {1,0}.

The programs for A014577, the canonical program `A014577.P18150949447596937918` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014577 has offset 0).

The definition of A014577 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014707, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014577.P18150949447596937918

`1-A014707(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014577

/-- `1-A014707(n)` -/
def P18150949447596937918.Spec : Prop :=
  ∀ n, P18150949447596937918.a n = A014577 n

theorem P18150949447596937918.correct : P18150949447596937918.Spec := by
  intro n
  simp only [A014577]

end A014577

/-! ## A014577.P17287171630881680036

`A014710(n)-1`
-/

namespace A014577.P17287171630881680036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 n - 1

end

end A014577.P17287171630881680036

namespace A014577

/-- `A014710(n)-1` -/
def P17287171630881680036.Spec : Prop :=
  ∀ n, P17287171630881680036.a n = A014577 n

end A014577

/-! ## A014577.P12425813300595532925

`2-A014709(n)`
-/

namespace A014577.P12425813300595532925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014709 n

end

end A014577.P12425813300595532925

namespace A014577

/-- `2-A014709(n)` -/
def P12425813300595532925.Spec : Prop :=
  ∀ n, P12425813300595532925.a n = A014577 n

end A014577

/-! ## A014577.P3627578803086755857

`1-A038189(n+1)`
-/

namespace A014577.P3627578803086755857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A038189 (n + 1)

end

end A014577.P3627578803086755857

namespace A014577

/-- `1-A038189(n+1)` -/
def P3627578803086755857.Spec : Prop :=
  ∀ n, P3627578803086755857.a n = A014577 n

end A014577

/-! ## A014577.P8589197816951113491

`(A112347(n+1)+1)/2`
-/

namespace A014577.P8589197816951113491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112347 (n + 1) + 1 : ℚ) / 2

end

end A014577.P8589197816951113491

namespace A014577

/-- `(A112347(n+1)+1)/2` -/
def P8589197816951113491.Spec : Prop :=
  ∀ n, P8589197816951113491.a n = (A014577 n : ℚ)

end A014577

/-! ## A014577.P727919036055815950

`(A317335(n+1)+2)/3`
-/

namespace A014577.P727919036055815950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317335 (n + 1) + 2 : ℚ) / 3

end

end A014577.P727919036055815950

namespace A014577

/-- `(A317335(n+1)+2)/3` -/
def P727919036055815950.Spec : Prop :=
  ∀ n, P727919036055815950.a n = (A014577 n : ℚ)

end A014577

/-! ## A014577.P17753642378792236931

`(3-A099545(n+1))/2`
-/

namespace A014577.P17753642378792236931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A099545 (n + 1) : ℚ) / 2

end

end A014577.P17753642378792236931

namespace A014577

/-- `(3-A099545(n+1))/2` -/
def P17753642378792236931.Spec : Prop :=
  ∀ n, P17753642378792236931.a n = (A014577 n : ℚ)

end A014577

/-! ## A014577.P379993441343224860

`A082410(n+2)`
-/

namespace A014577.P379993441343224860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082410 (n + 2)

end

end A014577.P379993441343224860

namespace A014577

/-- `A082410(n+2)` -/
def P379993441343224860.Spec : Prop :=
  ∀ n, P379993441343224860.a n = A014577 n

end A014577

/-! ## A014577.P8676955461545868400

`1-A089013(n+1)`
-/

namespace A014577.P8676955461545868400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A089013 (n + 1)

end

end A014577.P8676955461545868400

namespace A014577

/-- `1-A089013(n+1)` -/
def P8676955461545868400.Spec : Prop :=
  ∀ n, P8676955461545868400.a n = A014577 n

end A014577

/-! ## A014577.P4878972364562348259

`(A121238(n+1)+1)/2`
-/

namespace A014577.P4878972364562348259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121238 (n + 1) + 1 : ℚ) / 2

end

end A014577.P4878972364562348259

namespace A014577

/-- `(A121238(n+1)+1)/2` -/
def P4878972364562348259.Spec : Prop :=
  ∀ n, P4878972364562348259.a n = (A014577 n : ℚ)

end A014577

/-! ## A014577.P5414107379284272101

`char[and(n, n+1)+n]`
-/

namespace A014577.P5414107379284272101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A014577.P5414107379284272101

namespace A014577

/-- `char[and(n, n+1)+n]` -/
def P5414107379284272101.Spec : Prop :=
  ∀ n, (P5414107379284272101.a n : ℤ) = A014577 n

end A014577

/-! ## A014577.P2455818959048823954

`ceil(acot(Δ[xor(n, 2*n)]))`
-/

namespace A014577.P2455818959048823954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉

end

end A014577.P2455818959048823954

namespace A014577

/-- `ceil(acot(Δ[xor(n, 2*n)]))` -/
def P2455818959048823954.Spec : Prop :=
  ∀ n, P2455818959048823954.a n = A014577 n

end A014577

/-! ## A014577.P12854291226746598208

`1-char[or(n, n-1)+n]`
-/

namespace A014577.P12854291226746598208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A014577.P12854291226746598208

namespace A014577

/-- `1-char[or(n, n-1)+n]` -/
def P12854291226746598208.Spec : Prop :=
  ∀ n, P12854291226746598208.a n = A014577 n

end A014577

/-! ## A014577.P18272702504725389434

`char[n-(1-and(n, n-1))]`
-/

namespace A014577.P18272702504725389434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - Int.land (n : ℤ) ((n : ℤ) - 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A014577.P18272702504725389434

namespace A014577

/-- `char[n-(1-and(n, n-1))]` -/
def P18272702504725389434.Spec : Prop :=
  ∀ n, (P18272702504725389434.a n : ℤ) = A014577 n

end A014577

/-! ## A014577.P9339188704352213970

`floor(ratio[sqrt(xor(n, 2*n+1))])`
-/

namespace A014577.P9339188704352213970
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor n (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A014577.P9339188704352213970

namespace A014577

/-- `floor(ratio[sqrt(xor(n, 2*n+1))])` -/
def P9339188704352213970.Spec : Prop :=
  ∀ n, P9339188704352213970.a n = A014577 n

end A014577

/-! ## A014577.P10002094665266889637

`ceil(Δ[atan(or(n, 2*n+1))])`
-/

namespace A014577.P10002094665266889637
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Nat.lor n (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A014577.P10002094665266889637

namespace A014577

/-- `ceil(Δ[atan(or(n, 2*n+1))])` -/
def P10002094665266889637.Spec : Prop :=
  ∀ n, P10002094665266889637.a n = A014577 n

end A014577

/-! ## A014577.P16711268773209226369

`ceil(Δ[atan(xor(n, 2*n+1))])`
-/

namespace A014577.P16711268773209226369
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Nat.xor n (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A014577.P16711268773209226369

namespace A014577

/-- `ceil(Δ[atan(xor(n, 2*n+1))])` -/
def P16711268773209226369.Spec : Prop :=
  ∀ n, P16711268773209226369.a n = A014577 n

end A014577

/-! ## A014577.P4218348235265787257

`floor(ratio[atan(xor(n, 2*n+1))])`
-/

namespace A014577.P4218348235265787257
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Nat.xor n (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A014577.P4218348235265787257

namespace A014577

/-- `floor(ratio[atan(xor(n, 2*n+1))])` -/
def P4218348235265787257.Spec : Prop :=
  ∀ n, P4218348235265787257.a n = A014577 n

end A014577

/-! ## A014577.P12037968061095107397

`(Δ[xor(n, 2*n)]%2+1)/2`
-/

namespace A014577.P12037968061095107397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 + 1 : ℚ) / 2

end

end A014577.P12037968061095107397

namespace A014577

/-- `(Δ[xor(n, 2*n)]%2+1)/2` -/
def P12037968061095107397.Spec : Prop :=
  ∀ n, P12037968061095107397.a n = (A014577 n : ℚ)

end A014577

/-! ## A014577.P1683239564867605883

`floor(1/Δ[and(n, 2*n+1)])²`
-/

namespace A014577.P1683239564867605883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)⌋ ^ 2

end

end A014577.P1683239564867605883

namespace A014577

/-- `floor(1/Δ[and(n, 2*n+1)])²` -/
def P1683239564867605883.Spec : Prop :=
  ∀ n, P1683239564867605883.a n = A014577 n

end A014577

/-!
# A014578: Binary expansion of Thue constant (or Roth's constant).

The programs for A014578, the canonical program `A014578.P15504020527935821734` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014578 has offset 0).

The definition of A014578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014578.P15504020527935821734

`1-a(val(n, 3)%2)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014578

/-- `1-a(val(n, 3)%2)` -/
def P15504020527935821734.Spec : Prop :=
  ∀ n, P15504020527935821734.a n = A014578 n

theorem P15504020527935821734.correct : P15504020527935821734.Spec := by
  intro n
  simp only [A014578]

end A014578

/-! ## A014578.P9513079154377060106

`1-a(C(n, 3)%n)` with `a(0)=0`
-/

namespace A014578.P9513079154377060106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (Nat.choose n 3 % n)

end

end A014578.P9513079154377060106

namespace A014578

/-- `1-a(C(n, 3)%n)` -/
def P9513079154377060106.Spec : Prop :=
  ∀ n, P9513079154377060106.a n = A014578 n

end A014578

/-! ## A014578.P298952787802129670

`1-a(∑[∑[n]]%n)` with `a(0)=0`
-/

namespace A014578.P298952787802129670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a ((∑ j ∈ Finset.range (n + 1), f1 j) % n)

end

end A014578.P298952787802129670

namespace A014578

/-- `1-a(∑[∑[n]]%n)` -/
def P298952787802129670.Spec : Prop :=
  ∀ n, P298952787802129670.a n = A014578 n

end A014578

/-! ## A014578.P9758988899659642759

`1-a(n-n/gcd(3, n))` with `a(0)=0`
-/

namespace A014578.P9758988899659642759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (SequenceMachineLib.roundAway ((n : ℚ) - (n : ℚ) / (Nat.gcd 3 n : ℚ))).toNat

end

end A014578.P9758988899659642759

namespace A014578

/-- `1-a(n-n/gcd(3, n))` -/
def P9758988899659642759.Spec : Prop :=
  ∀ n, P9758988899659642759.a n = A014578 n

end A014578

/-! ## A014578.P3731070182130403452

`char[(n+1)*3^val(n+1, 3)]`
-/

namespace A014578.P3731070182130403452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 3 ^ SequenceMachineLib.valuation (n + 1) 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A014578.P3731070182130403452

namespace A014578

/-- `char[(n+1)*3^val(n+1, 3)]` -/
def P3731070182130403452.Spec : Prop :=
  ∀ n, (P3731070182130403452.a n : ℤ) = A014578 n

end A014578

/-! ## A014578.P14756076535182961226

`abs(A163532(n))`
-/

namespace A014578.P14756076535182961226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163532 n|

end

end A014578.P14756076535182961226

namespace A014578

/-- `abs(A163532(n))` -/
def P14756076535182961226.Spec : Prop :=
  ∀ n, P14756076535182961226.a n = A014578 n

end A014578

/-! ## A014578.P7047214271292885356

`∑{d}[n, A154271(#)]`
-/

namespace A014578.P7047214271292885356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154271 d

end

end A014578.P7047214271292885356

namespace A014578

/-- `∑{d}[n, A154271(#)]` -/
def P7047214271292885356.Spec : Prop :=
  ∀ n, P7047214271292885356.a n = A014578 n

end A014578

/-! ## A014578.P1238859834266342237

`A163532(2*n)²`
-/

namespace A014578.P1238859834266342237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (2 * n) ^ 2

end

end A014578.P1238859834266342237

namespace A014578

/-- `A163532(2*n)²` -/
def P1238859834266342237.Spec : Prop :=
  ∀ n, P1238859834266342237.a n = A014578 n

end A014578

/-! ## A014578.P17591257244584011879

`A163533(3*n)²`
-/

namespace A014578.P17591257244584011879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (3 * n) ^ 2

end

end A014578.P17591257244584011879

namespace A014578

/-- `A163533(3*n)²` -/
def P17591257244584011879.Spec : Prop :=
  ∀ n, P17591257244584011879.a n = A014578 n

end A014578

/-! ## A014578.P11313425769548065794

`char[A007417(n+1)]`
-/

namespace A014578.P11313425769548065794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A014578.P11313425769548065794

namespace A014578

/-- `char[A007417(n+1)]` -/
def P11313425769548065794.Spec : Prop :=
  ∀ n, (P11313425769548065794.a n : ℤ) = A014578 n

end A014578

/-! ## A014578.P15828361499360318011

`1-a(A175676(n))` with `a(0)=0`
-/

namespace A014578.P15828361499360318011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (A175676 n).toNat

end

end A014578.P15828361499360318011

namespace A014578

/-- `1-a(A175676(n))` -/
def P15828361499360318011.Spec : Prop :=
  ∀ n, P15828361499360318011.a n = A014578 n

end A014578

/-! ## A014578.P13101437095175528249

`char[∑[A092400(n+1)]]`
-/

namespace A014578.P13101437095175528249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092400 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A014578.P13101437095175528249

namespace A014578

/-- `char[∑[A092400(n+1)]]` -/
def P13101437095175528249.Spec : Prop :=
  ∀ n, (P13101437095175528249.a n : ℤ) = A014578 n

end A014578

/-! ## A014578.P8592337917851973846

`a(1-A182581(n))` with `a(0)=0, a(1)=1`
-/

namespace A014578.P8592337917851973846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (1 - A182581 n).toNat

end

end A014578.P8592337917851973846

namespace A014578

/-- `a(1-A182581(n))` -/
def P8592337917851973846.Spec : Prop :=
  ∀ n, (P8592337917851973846.a n : ℤ) = A014578 n

end A014578

/-! ## A014578.P2761493550366275154

`1-char[A145204(n+1)]`
-/

namespace A014578.P2761493550366275154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A014578.P2761493550366275154

namespace A014578

/-- `1-char[A145204(n+1)]` -/
def P2761493550366275154.Spec : Prop :=
  ∀ n, P2761493550366275154.a n = A014578 n

end A014578

/-! ## A014578.P4129824715810348032

`and(1, 4-val(A006863(n), 3))`
-/

namespace A014578.P4129824715810348032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (4 - (SequenceMachineLib.valuation (A006863 n).toNat 3 : ℤ))

end

end A014578.P4129824715810348032

namespace A014578

/-- `and(1, 4-val(A006863(n), 3))` -/
def P4129824715810348032.Spec : Prop :=
  ∀ n, P4129824715810348032.a n = A014578 n

end A014578

/-! ## A014578.P14474453893004805427

`A182581(A008486(n))`
-/

namespace A014578.P14474453893004805427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (A008486 n).toNat

end

end A014578.P14474453893004805427

namespace A014578

/-- `A182581(A008486(n))` -/
def P14474453893004805427.Spec : Prop :=
  ∀ n, P14474453893004805427.a n = A014578 n

end A014578

/-! ## A014578.P16391263956467630115

`A182581(A298028(n))`
-/

namespace A014578.P16391263956467630115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (A298028 n).toNat

end

end A014578.P16391263956467630115

namespace A014578

/-- `A182581(A298028(n))` -/
def P16391263956467630115.Spec : Prop :=
  ∀ n, P16391263956467630115.a n = A014578 n

end A014578

/-! ## A014578.P9424472878352148294

`gcd(A002483(n), A163532(n))`
-/

namespace A014578.P9424472878352148294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002483 n) (A163532 n)

end

end A014578.P9424472878352148294

namespace A014578

/-- `gcd(A002483(n), A163532(n))` -/
def P9424472878352148294.Spec : Prop :=
  ∀ n, (P9424472878352148294.a n : ℤ) = A014578 n

end A014578

/-!
# A014579: Inverse of 570th cyclotomic polynomial.

The programs for A014579, there is no canonical definition to state claims against.
-/

/-! ## A014579.P8862905168807529906

`A014294(n)*A033999(n)`
-/

namespace A014579.P8862905168807529906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014294 n * A033999 n

end

end A014579.P8862905168807529906

/-!
# A014580: Binary irreducible polynomials (primes in the ring GF(2)[X]), evaluated at X=2.

The programs for A014580, there is no canonical definition to state claims against.
-/

/-! ## A014580.P9336302697591326128

`A091223(n)+a(n-1)` with `a(0)=2`
-/

namespace A014580.P9336302697591326128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A091223 n + a (n - 1)

end

end A014580.P9336302697591326128

/-! ## A014580.P12047690123064403332

`∪[A091206(n+1), A091214(n+1)]`
-/

namespace A014580.P12047690123064403332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014580.P12047690123064403332

/-! ## A014580.P14268034078639963323

`comp[xor(n+1, A091225(n))-1]`
-/

namespace A014580.P14268034078639963323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A091225 n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A014580.P14268034078639963323

/-! ## A014580.P11973240204156619328

`filter[A257688(n+1), A091225(#)]`
-/

namespace A014580.P11973240204156619328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091225 (f1 j).toNat = 1) n)

end

end A014580.P11973240204156619328

/-! ## A014580.P17901956227579647361

`filter[A235035(n+1), A091225(#)]`
-/

namespace A014580.P17901956227579647361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091225 (f1 j).toNat = 1) n)

end

end A014580.P17901956227579647361

/-! ## A014580.P14154072678994487206

`filter[A235035(n+1), A257000(#)]`
-/

namespace A014580.P14154072678994487206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A014580.P14154072678994487206

/-! ## A014580.P17248159647035304690

`eq[1, A091225(n)]`
-/

namespace A014580.P17248159647035304690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014580.P17248159647035304690

/-! ## A014580.P17176718736931456156

`eq[1, A304529(n+1)]+1`
-/

namespace A014580.P17176718736931456156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014580.P17176718736931456156

/-! ## A014580.P7385881595708042666

`eq[2, A278233(n+1)]+1`
-/

namespace A014580.P7385881595708042666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014580.P7385881595708042666

/-! ## A014580.P17502246579306163774

`eq[2, A305788(n+1)]+1`
-/

namespace A014580.P17502246579306163774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305788 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014580.P17502246579306163774

/-! ## A014580.P15400795178494566087

`lt[1-A091225(n), A257000(n)]`
-/

namespace A014580.P15400795178494566087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A091225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014580.P15400795178494566087

/-! ## A014580.P5881209883198350850

`lt[A091225(2*n), A091225(n)]`
-/

namespace A014580.P5881209883198350850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014580.P5881209883198350850

/-! ## A014580.P14378050256216606249

`A234750(A234751(n+1))`
-/

namespace A014580.P14378050256216606249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234750 (A234751 (n + 1)).toNat

end

end A014580.P14378050256216606249

/-! ## A014580.P2677768683892184265

`lt[A091247(n), A091247(2*n)]`
-/

namespace A014580.P2677768683892184265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014580.P2677768683892184265

/-! ## A014580.P17350982639467738388

`filter[A206074(n+1), A091225(#)]`
-/

namespace A014580.P17350982639467738388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091225 (f1 j).toNat = 1) n)

end

end A014580.P17350982639467738388

/-! ## A014580.P3080057273143198649

`∩[A206074(n+1), A235035(n+1)]`
-/

namespace A014580.P3080057273143198649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014580.P3080057273143198649

/-! ## A014580.P3909500539608537184

`A305420(a(n-1))` with `a(0)=2`
-/

namespace A014580.P3909500539608537184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A305420 (a (n - 1)).toNat

end

end A014580.P3909500539608537184

/-! ## A014580.P6753460468960475449

`A305421(a(n-1))` with `a(0)=2`
-/

namespace A014580.P6753460468960475449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A305421 (a (n - 1)).toNat

end

end A014580.P6753460468960475449

/-!
# A014581: Inverse of 572nd cyclotomic polynomial.

The programs for A014581, there is no canonical definition to state claims against.
-/

/-! ## A014581.P17883966123277839723

`A015153(A022998(n))`
-/

namespace A014581.P17883966123277839723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015153 (A022998 n).toNat

end

end A014581.P17883966123277839723

/-!
# A014583: Inverse of 574th cyclotomic polynomial.

The programs for A014583, there is no canonical definition to state claims against.
-/

/-! ## A014583.P2056274568587828050

`A014296(n)*A033999(n)`
-/

namespace A014583.P2056274568587828050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014296 n * A033999 n

end

end A014583.P2056274568587828050

/-!
# A014584: Number of Hamiltonian paths in a 5 X n grid starting at the lower left corner and finishing in the upper right corner.

The programs for A014584, there is no canonical definition to state claims against.
-/

/-! ## A014584.P12750080540479490063

`A333580(∑[a(n-1)+1])` with `a(0)=12, a(1)=3, a(2)=5`
-/

namespace A014584.P12750080540479490063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 3, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014584.P12750080540479490063

/-! ## A014584.P3028868530574579565

`A333580(Δ[A008778(n)]+n+2)%A333565(n)`
-/

namespace A014584.P3028868530574579565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333580 (f1 (n + 1) - f1 n + (n + 2 : ℤ)).toNat) (A333565 n)

end

end A014584.P3028868530574579565

/-!
# A014585: Number of Hamiltonian paths in a 5 X n grid starting in the lower left corner and ending in the lower right.

The programs for A014585, there is no canonical definition to state claims against.
-/

/-! ## A014585.P13366860153075562417

`A271592(A167499(n)+A008486(n))`
-/

namespace A014585.P13366860153075562417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A167499 n + A008486 n).toNat

end

end A014585.P13366860153075562417

/-! ## A014585.P14630261618528921132

`A271592(A167614(n+1)+A004277(n))`
-/

namespace A014585.P14630261618528921132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A167614 (n + 1) + A004277 n).toNat

end

end A014585.P14630261618528921132

/-! ## A014585.P17137887581308755342

`A271592(A027379(n)+A005408(n)+5)`
-/

namespace A014585.P17137887581308755342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A027379 n + (A005408 n + 5)).toNat

end

end A014585.P17137887581308755342

/-! ## A014585.P6087409440262450917

`A271592(A046691(n+2))%A000732(n)`
-/

namespace A014585.P6087409440262450917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271592 (A046691 (n + 2)).toNat) (A000732 n)

end

end A014585.P6087409440262450917

/-! ## A014585.P17491699277242344126

`and(A057428(n), A271592(A046691(n+2)))`
-/

namespace A014585.P17491699277242344126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A271592 (A046691 (n + 2)).toNat)

end

end A014585.P17491699277242344126

/-!
# A014586: Nim-Grundy function for Take-a-Square (or Subtract-a-Square) game.

The programs for A014586, there is no canonical definition to state claims against.
-/

/-! ## A014586.P16473108615941837327

`A053796((n+1)*∑[n]+∑[6*n]-n)`
-/

namespace A014586.P16473108615941837327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053796 ((((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A014586.P16473108615941837327

/-! ## A014586.P16906885068961567117

`A061882(A037465(n+3))%3`
-/

namespace A014586.P16906885068961567117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061882 (A037465 (n + 3)).toNat) 3

end

end A014586.P16906885068961567117

/-! ## A014586.P17358514859793861013

`A198517(A361272(2*n))+A198517(n+1)`
-/

namespace A014586.P17358514859793861013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198517 (A361272 (2 * n)).toNat + A198517 (n + 1)

end

end A014586.P17358514859793861013

/-! ## A014586.P14356606628100312218

`A242081(A380485(n+1))`
-/

namespace A014586.P14356606628100312218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242081 (A380485 (n + 1)).toNat

end

end A014586.P14356606628100312218

/-! ## A014586.P2750013493687206501

`A070471(2*n*A130488(2*n))`
-/

namespace A014586.P2750013493687206501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070471 ((2 * n : ℤ) * A130488 (2 * n)).toNat

end

end A014586.P2750013493687206501

/-!
# A014587: Nim function for Take-a-Factorial-Game (a subtraction game).

The programs for A014587, there is no canonical definition to state claims against.
-/

/-! ## A014587.P17587149435124493086

`A205842(A000217(3*n+1))%4`
-/

namespace A014587.P17587149435124493086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205842 (A000217 (3 * n + 1)).toNat) 4

end

end A014587.P17587149435124493086

/-! ## A014587.P17053844239150549593

`and(comp[A000040(3*n+2)], A120275(3*n+2))`
-/

namespace A014587.P17053844239150549593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A120275 (3 * n + 2))

end

end A014587.P17053844239150549593

/-! ## A014587.P1858649254541586993

`A010873(lt[A010873(n)-A268318(3*n+2), 2])`
-/

namespace A014587.P1858649254541586993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n - A268318 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A014587.P1858649254541586993

/-! ## A014587.P9528654334712462158

`lt[A214375(n+3), A214605(n+2)]%4`
-/

namespace A014587.P9528654334712462158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214375 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214605 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n % 4

end

end A014587.P9528654334712462158

/-! ## A014587.P16672682934764048289

`eq[A010892(n), A325989(n+1)]%4`
-/

namespace A014587.P16672682934764048289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % 4

end

end A014587.P16672682934764048289

/-!
# A014588: Nim function for Take-a-Fibonacci-Game (a subtraction game).

The programs for A014588, there is no canonical definition to state claims against.
-/

/-! ## A014588.P16186884691788707487

`A010875(A039247(n+1)^3)`
-/

namespace A014588.P16186884691788707487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A039247 (n + 1) ^ 3).toNat

end

end A014588.P16186884691788707487

/-! ## A014588.P4234775234475563215

`eq[1, A254046(A110004(n+1))]%6`
-/

namespace A014588.P4234775234475563215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (A110004 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 6

end

end A014588.P4234775234475563215

/-! ## A014588.P14497257155388580510

`eq[A066339(n+1)%6, A340763(n+1)]%6`
-/

namespace A014588.P14497257155388580510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066339 (n + 1)) 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % 6

end

end A014588.P14497257155388580510

/-! ## A014588.P12473553672670434993

`A010875(A039247(n+1)²*A039247(n+1))`
-/

namespace A014588.P12473553672670434993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A039247 (n + 1) ^ 2 * A039247 (n + 1)).toNat

end

end A014588.P12473553672670434993

/-!
# A014589: Nim function for Take-a-Prime (or Subtract-a-Prime) Game.

The programs for A014589, there is no canonical definition to state claims against.
-/

/-! ## A014589.P15101024148944698594

`A214972(A073941(n+1))%A008619(n)`
-/

namespace A014589.P15101024148944698594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214972 (A073941 (n + 1)).toNat) (A008619 n)

end

end A014589.P15101024148944698594

/-! ## A014589.P6484416489613012856

`A095791(A032090(n+1))%A008619(n)`
-/

namespace A014589.P6484416489613012856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095791 (A032090 (n + 1)).toNat) (A008619 n)

end

end A014589.P6484416489613012856

/-! ## A014589.P6209421725020481345

`∑[A230093(A085158(n))]%A008619(n)`
-/

namespace A014589.P6209421725020481345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A085158 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A008619 n)

end

end A014589.P6209421725020481345

/-! ## A014589.P15296611287572626574

`A053186(A020888(n+4)%A124889(n))`
-/

namespace A014589.P15296611287572626574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (Int.tmod (A020888 (n + 4)) (A124889 n)).toNat

end

end A014589.P15296611287572626574

/-! ## A014589.P10445511060377069871

`A004426(n+9)%A004427(A342810(n+1))`
-/

namespace A014589.P10445511060377069871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004426 (n + 9)) (A004427 (A342810 (n + 1)).toNat)

end

end A014589.P10445511060377069871

/-!
# A014590: Inverse of 581st cyclotomic polynomial.

The programs for A014590, there is no canonical definition to state claims against.
-/

/-! ## A014590.P18055996249034403699

`A015171(gcd(n, n+2)²)*A015171(n)`
-/

namespace A014590.P18055996249034403699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015171 (Nat.gcd n (n + 2) ^ 2) * A015171 n

end

end A014590.P18055996249034403699

/-!
# A014591: a(n) = floor(n^2/12 + 5/4).

The programs for A014591, the canonical program `A014591.P3725034975632353547` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014591 has offset 0).

The definition of A014591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/12+5/4)` (program `A014591.P3725034975632353547`, by `A014591.P3725034975632353547.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014591.P3725034975632353547

`floor(n²/12+5/4)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014591

/-- `floor(n²/12+5/4)` -/
def P3725034975632353547.Spec : Prop :=
  ∀ n, P3725034975632353547.a n = A014591 n

theorem P3725034975632353547.correct : P3725034975632353547.Spec := by
  intro n
  simp only [A014591]

end A014591

/-! ## A014591.P9367738651980198434

`1+A069905(n)`
-/

namespace A014591.P9367738651980198434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A069905 n

end

end A014591.P9367738651980198434

namespace A014591

/-- `1+A069905(n)` -/
def P9367738651980198434.Spec : Prop :=
  ∀ n, P9367738651980198434.a n = A014591 n

end A014591

/-! ## A014591.P18069414464853943876

`ceil(or(5, n²)/12)`
-/

namespace A014591.P18069414464853943876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 5 (n ^ 2) : ℚ) / 12⌉

end

end A014591.P18069414464853943876

namespace A014591

/-- `ceil(or(5, n²)/12)` -/
def P18069414464853943876.Spec : Prop :=
  ∀ n, P18069414464853943876.a n = A014591 n

end A014591

/-! ## A014591.P13049491230305145533

`ceil((cosh(2)+n²)/12)`
-/

namespace A014591.P13049491230305145533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cosh (2 : ℝ) + (n ^ 2 : ℝ)) / 12⌉

end

end A014591.P13049491230305145533

namespace A014591

/-- `ceil((cosh(2)+n²)/12)` -/
def P13049491230305145533.Spec : Prop :=
  ∀ n, P13049491230305145533.a n = A014591 n

end A014591

/-! ## A014591.P16091475956520877152

`ceil((sinh(2)+n²)/12)`
-/

namespace A014591.P16091475956520877152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sinh (2 : ℝ) + (n ^ 2 : ℝ)) / 12⌉

end

end A014591.P16091475956520877152

namespace A014591

/-- `ceil((sinh(2)+n²)/12)` -/
def P16091475956520877152.Spec : Prop :=
  ∀ n, P16091475956520877152.a n = A014591 n

end A014591

/-! ## A014591.P16954568702570769254

`ceil((n²-tan(8))/12)`
-/

namespace A014591.P16954568702570769254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℝ) - Real.tan (8 : ℝ)) / 12⌉

end

end A014591.P16954568702570769254

namespace A014591

/-- `ceil((n²-tan(8))/12)` -/
def P16954568702570769254.Spec : Prop :=
  ∀ n, P16954568702570769254.a n = A014591 n

end A014591

/-! ## A014591.P3530750707775050091

`a(n-2)+floor(n/3)` with `a(0)=1, a(1)=1`
-/

namespace A014591.P3530750707775050091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + ⌊(n : ℚ) / 3⌋

end

end A014591.P3530750707775050091

namespace A014591

/-- `a(n-2)+floor(n/3)` -/
def P3530750707775050091.Spec : Prop :=
  ∀ n, P3530750707775050091.a n = A014591 n

end A014591

/-! ## A014591.P9067062556337789952

`∑[floor(n/3-a(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A014591.P9067062556337789952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  ⌊(n : ℚ) / 3 - (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014591.P9067062556337789952

namespace A014591

/-- `∑[floor(n/3-a(n-1))]` -/
def P9067062556337789952.Spec : Prop :=
  ∀ n, P9067062556337789952.a n = A014591 n

end A014591

/-! ## A014591.P1152093513138951818

`∑[a(n-3)+n%2]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A014591.P1152093513138951818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1] fun n f1 =>
  f1 (n - 3) + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014591.P1152093513138951818

namespace A014591

/-- `∑[a(n-3)+n%2]` -/
def P1152093513138951818.Spec : Prop :=
  ∀ n, (P1152093513138951818.a n : ℤ) = A014591 n

end A014591

/-! ## A014591.P3050502862209010255

`round(a(n-2)+(n-1)/3)` with `a(0)=1, a(1)=1`
-/

namespace A014591.P3050502862209010255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + ((n : ℤ) - 1 : ℚ) / 3)

end

end A014591.P3050502862209010255

namespace A014591

/-- `round(a(n-2)+(n-1)/3)` -/
def P3050502862209010255.Spec : Prop :=
  ∀ n, P3050502862209010255.a n = A014591 n

end A014591

/-! ## A014591.P15190368902015265212

`ceil(a(n-2)+(n-2)/3)` with `a(0)=1, a(1)=1`
-/

namespace A014591.P15190368902015265212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(a (n - 2) : ℚ) + ((n : ℤ) - 2 : ℚ) / 3⌉

end

end A014591.P15190368902015265212

namespace A014591

/-- `ceil(a(n-2)+(n-2)/3)` -/
def P15190368902015265212.Spec : Prop :=
  ∀ n, P15190368902015265212.a n = A014591 n

end A014591

/-! ## A014591.P15540763954229198996

`floor(a(n-2))-floor((2-n)/3)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014591.P15540763954229198996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - ⌊(2 - (n : ℤ) : ℚ) / 3⌋

end

end A014591.P15540763954229198996

namespace A014591

/-- `floor(a(n-2))-floor((2-n)/3)` -/
def P15540763954229198996.Spec : Prop :=
  ∀ n, P15540763954229198996.a n = A014591 n

end A014591

/-! ## A014591.P6007200258791544446

`∑[∑[∑[floor(a(n-3))]-a(n-1)]]` with `a(0)=1, a(1)=-1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A014591.P6007200258791544446
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n f3 =>
  f3 (n - 3)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n f2 =>
  ∑ j ∈ Finset.range (n + 1), f3 j - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014591.P6007200258791544446

namespace A014591

/-- `∑[∑[∑[floor(a(n-3))]-a(n-1)]]` -/
def P6007200258791544446.Spec : Prop :=
  ∀ n, P6007200258791544446.a n = A014591 n

end A014591

/-! ## A014591.P17112973641878379740

`A001399(n+3)-(n+2)`
-/

namespace A014591.P17112973641878379740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 3) - (n + 2 : ℤ)

end

end A014591.P17112973641878379740

namespace A014591

/-- `A001399(n+3)-(n+2)` -/
def P17112973641878379740.Spec : Prop :=
  ∀ n, P17112973641878379740.a n = A014591 n

end A014591

/-! ## A014591.P8408134465764548040

`A008750(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A014591.P8408134465764548040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008750 n - a (n - 1)

end

end A014591.P8408134465764548040

namespace A014591

/-- `A008750(n)-a(n-1)` -/
def P8408134465764548040.Spec : Prop :=
  ∀ n, P8408134465764548040.a n = A014591 n

end A014591

/-! ## A014591.P3349073640642709282

`round((A000982(n)/2+2)/3)`
-/

namespace A014591.P3349073640642709282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000982 n : ℚ) / 2 + 2) / 3)

end

end A014591.P3349073640642709282

namespace A014591

/-- `round((A000982(n)/2+2)/3)` -/
def P3349073640642709282.Spec : Prop :=
  ∀ n, P3349073640642709282.a n = A014591 n

end A014591

/-! ## A014591.P12515232942400309707

`(A069813(n+3)-(n-1))/2`
-/

namespace A014591.P12515232942400309707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069813 (n + 3) - ((n : ℤ) - 1) : ℚ) / 2

end

end A014591.P12515232942400309707

namespace A014591

/-- `(A069813(n+3)-(n-1))/2` -/
def P12515232942400309707.Spec : Prop :=
  ∀ n, P12515232942400309707.a n = (A014591 n : ℚ)

end A014591

/-! ## A014591.P2979042763419914457

`ceil((∑[A008619(n)]-(n-1))/3)`
-/

namespace A014591.P2979042763419914457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1) : ℤ) : ℚ) / 3⌉

end

end A014591.P2979042763419914457

namespace A014591

/-- `ceil((∑[A008619(n)]-(n-1))/3)` -/
def P2979042763419914457.Spec : Prop :=
  ∀ n, P2979042763419914457.a n = A014591 n

end A014591

/-! ## A014591.P17960491965923570203

`A211540(n)+A008620(n)`
-/

namespace A014591.P17960491965923570203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 n + A008620 n

end

end A014591.P17960491965923570203

namespace A014591

/-- `A211540(n)+A008620(n)` -/
def P17960491965923570203.Spec : Prop :=
  ∀ n, P17960491965923570203.a n = A014591 n

end A014591

/-! ## A014591.P12556074495686582753

`A000212(n)-A078126(n)`
-/

namespace A014591.P12556074495686582753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n - A078126 n

end

end A014591.P12556074495686582753

namespace A014591

/-- `A000212(n)-A078126(n)` -/
def P12556074495686582753.Spec : Prop :=
  ∀ n, P12556074495686582753.a n = A014591 n

end A014591

/-!
# A014592: Inverse of 583rd cyclotomic polynomial.

The programs for A014592, there is no canonical definition to state claims against.
-/

/-! ## A014592.P5728954533475986180

`A003849(A261585(n)^5)`
-/

namespace A014592.P5728954533475986180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A261585 n ^ 5).toNat

end

end A014592.P5728954533475986180

/-!
# A014594: Inverse of 585th cyclotomic polynomial.

The programs for A014594, there is no canonical definition to state claims against.
-/

/-! ## A014594.P12384825266798599007

`A014984(A093545(n))`
-/

namespace A014594.P12384825266798599007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014984 (A093545 n).toNat

end

end A014594.P12384825266798599007

/-!
# A014595: Conjectured dimensions of spaces of weight systems of chord diagrams.

The programs for A014595, there is no canonical definition to state claims against.
-/

/-! ## A014595.P11602008510419335820

`∑[A014596(n)]`
-/

namespace A014595.P11602008510419335820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014595.P11602008510419335820

/-!
# A014597: Numbers k such that k^2 is a sum of distinct factorials.

The programs for A014597, there is no canonical definition to state claims against.
-/

/-! ## A014597.P14048213729198302806

`ceil(sqrt(A025494(n+2)-3))`
-/

namespace A014597.P14048213729198302806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A025494 (n + 2) - 3 : ℝ)⌉

end

end A014597.P14048213729198302806

/-! ## A014597.P3534943519890264984

`sqrt(A025494(n+2))/A014963(4*n+2)`
-/

namespace A014597.P3534943519890264984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A025494 (n + 2) : ℝ) / (A014963 (4 * n + 2) : ℝ)

end

end A014597.P3534943519890264984

/-! ## A014597.P11052853366622054794

`sqrt(A025494(n+2))-A000045(C(2, n+2))`
-/

namespace A014597.P11052853366622054794
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A025494 (n + 2) : ℝ) - (A000045 (Nat.choose 2 (n + 2)) : ℝ)

end

end A014597.P11052853366622054794

/-! ## A014597.P14138818140773962199

`sqrt(A025494(n+2)^and(1, A000040(n+1)))`
-/

namespace A014597.P14138818140773962199
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A025494 (n + 2) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ) : ℝ)

end

end A014597.P14138818140773962199

/-! ## A014597.P16304946356696323151

`eq[1, A109381(n)]`
-/

namespace A014597.P16304946356696323151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014597.P16304946356696323151

/-!
# A014598: Inverse of 589th cyclotomic polynomial.

The programs for A014598, there is no canonical definition to state claims against.
-/

/-! ## A014598.P17477999199586396818

`A015187(n)*A033999(n)`
-/

namespace A014598.P17477999199586396818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015187 n * A033999 n

end

end A014598.P17477999199586396818

/-!
# A014599: Class numbers h(D) of imaginary quadratic orders with discriminant D=1-4*n.

The programs for A014599, there is no canonical definition to state claims against.
-/

/-! ## A014599.P14697441526769297760

`A014600(2*n)`
-/

namespace A014599.P14697441526769297760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 (2 * n)

end

end A014599.P14697441526769297760

/-! ## A014599.P9085145048930672368

`floor(1/acot(A014600(n+n)))`
-/

namespace A014599.P9085145048930672368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / SequenceMachineLib.acot (A014600 (n + n) : ℝ)⌋

end

end A014599.P9085145048930672368

/-! ## A014599.P8093572493791689598

`A014600(A005843(n))%(n+2)`
-/

namespace A014599.P8093572493791689598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014600 (A005843 n).toNat) (n + 2 : ℤ)

end

end A014599.P8093572493791689598

/-! ## A014599.P18179448123198586199

`A070140(A020639(n+1))+A014600(n+n)`
-/

namespace A014599.P18179448123198586199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070140 (A020639 (n + 1)).toNat + A014600 (n + n)

end

end A014599.P18179448123198586199

/-! ## A014599.P5008414702768717004

`A137735(A014600(eq[n, and(n, n+1)])²)`
-/

namespace A014599.P5008414702768717004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A014600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2).toNat

end

end A014599.P5008414702768717004

/-! ## A014599.P13214917570743819791

`A137735(A014600(eq[n+1, or(n, n+1)])²)`
-/

namespace A014599.P13214917570743819791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A014600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2).toNat

end

end A014599.P13214917570743819791

/-! ## A014599.P4537398115424781274

`A179527((n+1)²)+A014600(n+n)`
-/

namespace A014599.P4537398115424781274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 ((n + 1) ^ 2) + A014600 (n + n)

end

end A014599.P4537398115424781274

/-! ## A014599.P4288223567322286449

`A298972(A319861(n))+A014600(n+n)`
-/

namespace A014599.P4288223567322286449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298972 (A319861 n).toNat + A014600 (n + n)

end

end A014599.P4288223567322286449

