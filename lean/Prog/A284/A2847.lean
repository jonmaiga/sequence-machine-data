import SequenceMachineLib
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
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

/-!
# A284701: Number of maximal matchings in the n-antiprism graph.

The programs for A284701, there is no canonical definition to state claims against.
-/

/-! ## A284701.P1867881016796921548

`Δ[A057608(2*n)]+n`
-/

namespace A284701.P1867881016796921548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057608 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A284701.P1867881016796921548

/-!
# A284702: Number of dominating sets in the n-prism graph.

The programs for A284702, there is no canonical definition to state claims against.
-/

/-! ## A284702.P676910439203893115

`xor(A010675(n), A284663(n+1))`
-/

namespace A284702.P676910439203893115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010675 n) (A284663 (n + 1))

end

end A284702.P676910439203893115

/-! ## A284702.P13696935034117054617

`xor(A010673(n)², A284663(n+1))`
-/

namespace A284702.P13696935034117054617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 n ^ 2) (A284663 (n + 1))

end

end A284702.P13696935034117054617

/-! ## A284702.P2604498574374868395

`xor(4*A000035(n), A284663(n+1))`
-/

namespace A284702.P2604498574374868395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * A000035 n) (A284663 (n + 1))

end

end A284702.P2604498574374868395

/-! ## A284702.P3018483094421768856

`xor(and(4, A008574(n)), A284663(n+1))`
-/

namespace A284702.P3018483094421768856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 4 (A008574 n)) (A284663 (n + 1))

end

end A284702.P3018483094421768856

/-! ## A284702.P7624175892677591235

`xor(Δ[A052928(n)]², A284663(n+1))`
-/

namespace A284702.P7624175892677591235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((f1 (n + 1) - f1 n) ^ 2) (A284663 (n + 1))

end

end A284702.P7624175892677591235

/-!
# A284704: Number of dominating sets in the n-hypercube graph.

The programs for A284704, there is no canonical definition to state claims against.
-/

/-! ## A284704.P7310712951546096667

`sqrt(A295372(n+1))`
-/

namespace A284704.P7310712951546096667
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A295372 (n + 1) : ℝ)

end

end A284704.P7310712951546096667

/-!
# A284706: Number of maximal matchings in the n-hypercube graph Q_n.

The programs for A284706, there is no canonical definition to state claims against.
-/

/-! ## A284706.P4263534845103906220

`A317475(a(n-1))-a(n-1)+n` with `a(0)=1`
-/

namespace A284706.P4263534845103906220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A317475 (a (n - 1)).toNat - a (n - 1) + (n : ℤ)

end

end A284706.P4263534845103906220

/-!
# A284707: Number of maximal independent vertex sets in the n-hypercube graph Q_n.

The programs for A284707, there is no canonical definition to state claims against.
-/

/-! ## A284707.P12206771184541398109

`∏{p}[A025178(A017987(n)), #]`
-/

namespace A284707.P12206771184541398109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (A017987 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A284707.P12206771184541398109

/-! ## A284707.P18333970103511123468

`∏{p}[n*A005213(4*A000045(n)+1), #]`
-/

namespace A284707.P18333970103511123468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005213 (4 * A000045 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A284707.P18333970103511123468

/-!
# A284708: Smallest initial prime p for at least n primes in increasing arithmetic progression with a common difference less than p.

The programs for A284708, there is no canonical definition to state claims against.
-/

/-! ## A284708.P6901457606216400583

`A066658(A008784(n!))`
-/

namespace A284708.P6901457606216400583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066658 (A008784 (Nat.factorial n)).toNat

end

end A284708.P6901457606216400583

/-! ## A284708.P2329103650223750766

`∏{p}[A179707(A287275(n)), #]`
-/

namespace A284708.P2329103650223750766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (A287275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A284708.P2329103650223750766

/-! ## A284708.P13404236052190350491

`A155069(n)+A090234(A247630(n))`
-/

namespace A284708.P13404236052190350491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 n + A090234 (A247630 n).toNat

end

end A284708.P13404236052190350491

/-!
# A284710: Number of maximal matchings in the n-Moebius ladder.

The programs for A284710, there is no canonical definition to state claims against.
-/

/-! ## A284710.P7093428478838101882

`ceil(A308892(A218152(n))/2)`
-/

namespace A284710.P7093428478838101882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A308892 (A218152 n).toNat : ℚ) / 2⌉

end

end A284710.P7093428478838101882

/-! ## A284710.P4487308182865058480

`A126003(xor(A126010(n), A237044(n)))`
-/

namespace A284710.P4487308182865058480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126003 (Int.xor (A126010 n) (A237044 n)).toNat

end

end A284710.P4487308182865058480

/-!
# A284711: Even bisection of A283848.

The programs for A284711, there is no canonical definition to state claims against.
-/

/-! ## A284711.P3388685146353861259

`A283848(2*(n+2))`
-/

namespace A284711.P3388685146353861259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283848 (2 * (n + 2))

end

end A284711.P3388685146353861259

/-! ## A284711.P14376051947832723863

`record[gcd(val(n+1, 2), A283848(n+4))]`
-/

namespace A284711.P14376051947832723863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A283848 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284711.P14376051947832723863

/-! ## A284711.P14239419893877404427

`record[A283848(A000265(n+1)+3)]`
-/

namespace A284711.P14239419893877404427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283848 (A000265 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284711.P14239419893877404427

/-! ## A284711.P7126458709584328839

`record[A283848(n+4)/A000034(n)]`
-/

namespace A284711.P7126458709584328839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283848 (n + 4) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284711.P7126458709584328839

/-! ## A284711.P8143713525400011753

`A283846(2*(n+2))-A283847(2*(n+2))`
-/

namespace A284711.P8143713525400011753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283846 (2 * (n + 2)) - A283847 (2 * (n + 2))

end

end A284711.P8143713525400011753

/-!
# A284712: Number of indecomposable permutations avoiding the pattern 4321.

The programs for A284712, there is no canonical definition to state claims against.
-/

/-! ## A284712.P16472019092698710374

`A303925(n)+A111660(A323927(n+1))²`
-/

namespace A284712.P16472019092698710374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303925 n + A111660 (A323927 (n + 1)).toNat ^ 2

end

end A284712.P16472019092698710374

/-! ## A284712.P16202410780583165003

`or(A215252(n+1), A260736(18*n))`
-/

namespace A284712.P16202410780583165003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A215252 (n + 1)) (A260736 (18 * n))

end

end A284712.P16202410780583165003

/-! ## A284712.P12253127818398013482

`A284713(n+1)-val(A099952(n+1), 5)`
-/

namespace A284712.P12253127818398013482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284713 (n + 1) - (SequenceMachineLib.valuation (A099952 (n + 1)).toNat 5 : ℤ)

end

end A284712.P12253127818398013482

/-!
# A284713: Number of indecomposable permutations avoiding the pattern 4231.

The programs for A284713, there is no canonical definition to state claims against.
-/

/-! ## A284713.P14976249102086412186

`floor(A311667(A284712(n+1))/4)`
-/

namespace A284713.P14976249102086412186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A311667 (A284712 (n + 1)).toNat : ℚ) / 4⌋

end

end A284713.P14976249102086412186

/-! ## A284713.P18195244218820771992

`A284712(n+1)+A185284(A011782(n))`
-/

namespace A284713.P18195244218820771992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284712 (n + 1) + A185284 (A011782 n).toNat

end

end A284713.P18195244218820771992

/-! ## A284713.P6221016354056664136

`A284712(n+1)+A091225(A210911(n))`
-/

namespace A284713.P6221016354056664136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284712 (n + 1) + A091225 (A210911 n).toNat

end

end A284713.P6221016354056664136

/-!
# A284714: Number of indecomposable permutations avoiding the pattern 2314.

The programs for A284714, there is no canonical definition to state claims against.
-/

/-! ## A284714.P1995186375682841724

`A060144(A319119(n+1)-n)+1`
-/

namespace A284714.P1995186375682841724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A319119 (n + 1) - (n : ℤ)).toNat + 1

end

end A284714.P1995186375682841724

/-! ## A284714.P9550377097068713118

`A200475(n)-A033886(A005246(n))`
-/

namespace A284714.P9550377097068713118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200475 n - A033886 (A005246 n).toNat

end

end A284714.P9550377097068713118

/-! ## A284714.P9912082507348333244

`A200475(n)-A102679(A000522(n))`
-/

namespace A284714.P9912082507348333244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200475 n - A102679 (A000522 n).toNat

end

end A284714.P9912082507348333244

/-!
# A284715: Number of indecomposable permutations avoiding the pattern 3214.

The programs for A284715, there is no canonical definition to state claims against.
-/

/-! ## A284715.P16021135604488558227

`or(abs(A106227(n)), A185284(n²))`
-/

namespace A284715.P16021135604488558227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |A106227 n| (A185284 (n ^ 2))

end

end A284715.P16021135604488558227

/-! ## A284715.P1150405627682292866

`or(abs(A352705(n)), A185284(n²))`
-/

namespace A284715.P1150405627682292866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |A352705 n| (A185284 (n ^ 2))

end

end A284715.P1150405627682292866

/-! ## A284715.P12998427519775072581

`A086799(A108289(n)-(Δ[A186537(n+1)]-1))`
-/

namespace A284715.P12998427519775072581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A108289 n - (f1 (n + 1) - f1 n - 1)).toNat

end

end A284715.P12998427519775072581

/-!
# A284716: Number of indecomposable permutations avoiding the pattern 2143.

The programs for A284716, there is no canonical definition to state claims against.
-/

/-! ## A284716.P13288559807663318579

`A248563(n!)+floor(n*2^(n-3))`
-/

namespace A284716.P13288559807663318579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248563 (Nat.factorial n) + ⌊(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

end

end A284716.P13288559807663318579

/-! ## A284716.P5305166951872535189

`A349095(A149037(n))`
-/

namespace A284716.P5305166951872535189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349095 (A149037 n).toNat

end

end A284716.P5305166951872535189

/-!
# A284717: Number of indecomposable permutations avoiding the pattern 2134.

The programs for A284717, there is no canonical definition to state claims against.
-/

/-! ## A284717.P12360946407386283821

`A209061(A186577(n))`
-/

namespace A284717.P12360946407386283821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (A186577 n).toNat

end

end A284717.P12360946407386283821

/-! ## A284717.P1847672734159921445

`A124741(A125062(n))`
-/

namespace A284717.P1847672734159921445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A125062 n).toNat

end

end A284717.P1847672734159921445

/-!
# A284718: Number of indecomposable permutations avoiding the pattern 1324.

The programs for A284718, there is no canonical definition to state claims against.
-/

/-! ## A284718.P11297628310289638054

`round(∏[log(A144641(n+1))])`
-/

namespace A284718.P11297628310289638054
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A144641 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A284718.P11297628310289638054

/-! ## A284718.P2137494685769000541

`∑[A008676(A079291(n))]`
-/

namespace A284718.P2137494685769000541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A079291 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284718.P2137494685769000541

/-! ## A284718.P14854736402670607353

`∑[A033182(A114619(n))]`
-/

namespace A284718.P14854736402670607353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A114619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284718.P14854736402670607353

/-!
# A284719: Number of indecomposable permutations avoiding the pattern 1234.

The programs for A284719, there is no canonical definition to state claims against.
-/

/-! ## A284719.P13788869480277031554

`A068791(A329741(n+1))`
-/

namespace A284719.P13788869480277031554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068791 (A329741 (n + 1)).toNat

end

end A284719.P13788869480277031554

/-! ## A284719.P10031613181357412974

`A350660(A368984(n)+1)`
-/

namespace A284719.P10031613181357412974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350660 (A368984 n + 1).toNat

end

end A284719.P10031613181357412974

/-!
# A284720: Number of indecomposable permutations avoiding the vincular pattern 1 2_ 3_.

The programs for A284720, there is no canonical definition to state claims against.
-/

/-! ## A284720.P6018452466590200559

`A011972(∑[n])-A005001(n)`
-/

namespace A284720.P6018452466590200559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (∑ j ∈ Finset.range (n + 1), f1 j) - A005001 n

end

end A284720.P6018452466590200559

/-! ## A284720.P143517732312814101

`A123346(∑[n])-A005001(n)`
-/

namespace A284720.P143517732312814101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (∑ j ∈ Finset.range (n + 1), f1 j) - A005001 n

end

end A284720.P143517732312814101

/-! ## A284720.P12340520431882558221

`record[A095149(n)]-A005001(n)`
-/

namespace A284720.P12340520431882558221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005001 n

end

end A284720.P12340520431882558221

/-! ## A284720.P9757409853371304920

`record[A108087(n)]-A005001(n)`
-/

namespace A284720.P9757409853371304920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005001 n

end

end A284720.P9757409853371304920

/-! ## A284720.P14121593827640412059

`record[A123346(n)]-A005001(n)`
-/

namespace A284720.P14121593827640412059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005001 n

end

end A284720.P14121593827640412059

/-! ## A284720.P12800005337154122275

`A171859(n+1)+A000110(n)`
-/

namespace A284720.P12800005337154122275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171859 (n + 1) + A000110 n

end

end A284720.P12800005337154122275

/-! ## A284720.P1757740916502065710

`A000110(n+1)-A005001(n)`
-/

namespace A284720.P1757740916502065710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A005001 n

end

end A284720.P1757740916502065710

/-!
# A284721: Smallest odd prime that is relatively prime to 2n+1.

The programs for A284721, there is no canonical definition to state claims against.
-/

/-! ## A284721.P14662158977249974750

`A380539(Δ[n²])`
-/

namespace A284721.P14662158977249974750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380539 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284721.P14662158977249974750

/-! ## A284721.P382519477820777200

`A351566(record[xor(3, n)])`
-/

namespace A284721.P382519477820777200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351566 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A284721.P382519477820777200

/-! ## A284721.P7348293289346531750

`A284723(2*n+1)`
-/

namespace A284721.P7348293289346531750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284723 (2 * n + 1)

end

end A284721.P7348293289346531750

/-! ## A284721.P15916923517449627023

`A355001(4*n+2)`
-/

namespace A284721.P15916923517449627023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355001 (4 * n + 2)

end

end A284721.P15916923517449627023

/-! ## A284721.P5096347466782153229

`A351566(4*n+3)`
-/

namespace A284721.P5096347466782153229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351566 (4 * n + 3)

end

end A284721.P5096347466782153229

/-! ## A284721.P17328524818754995731

`A381031(Δ[n²])+2`
-/

namespace A284721.P17328524818754995731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381031 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A284721.P17328524818754995731

/-! ## A284721.P12606226151388453056

`A007947(A380539(2*n+1))`
-/

namespace A284721.P12606226151388453056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A380539 (2 * n + 1)).toNat

end

end A284721.P12606226151388453056

/-! ## A284721.P5764379004770368007

`A079578(A381031(2*n+1))`
-/

namespace A284721.P5764379004770368007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079578 (A381031 (2 * n + 1)).toNat

end

end A284721.P5764379004770368007

/-! ## A284721.P7162357398962904272

`A020639(A380539(n+1+n))`
-/

namespace A284721.P7162357398962904272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A380539 (n + 1 + n)).toNat

end

end A284721.P7162357398962904272

/-! ## A284721.P11378147252251280094

`A126800(A381031(2*n+1)+2)`
-/

namespace A284721.P11378147252251280094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126800 (A381031 (2 * n + 1) + 2).toNat

end

end A284721.P11378147252251280094

/-! ## A284721.P16695135680663018295

`A245689(A381031(2*n+1)+2)`
-/

namespace A284721.P16695135680663018295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245689 (A381031 (2 * n + 1) + 2).toNat

end

end A284721.P16695135680663018295

/-! ## A284721.P5539629272406589819

`A382960(A381031(2*n+1)+2)`
-/

namespace A284721.P5539629272406589819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382960 (A381031 (2 * n + 1) + 2).toNat

end

end A284721.P5539629272406589819

/-! ## A284721.P14832716391190001302

`A381805(Δ[n²])/2`
-/

namespace A284721.P14832716391190001302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381805 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A284721.P14832716391190001302

/-! ## A284721.P18386618806163378647

`A382248(2*n+1)/4`
-/

namespace A284721.P18386618806163378647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382248 (2 * n + 1) : ℚ) / 4

end

end A284721.P18386618806163378647

/-! ## A284721.P9727564299998493697

`A109395(A382767(2*n+1))`
-/

namespace A284721.P9727564299998493697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A382767 (2 * n + 1)).toNat

end

end A284721.P9727564299998493697

/-! ## A284721.P16830418909413090701

`A119288(A382248(2*n+1))`
-/

namespace A284721.P16830418909413090701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A382248 (2 * n + 1)).toNat

end

end A284721.P16830418909413090701

/-! ## A284721.P3047893716387179746

`A143201(A381805(2*n+1))+1`
-/

namespace A284721.P3047893716387179746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143201 (A381805 (2 * n + 1)).toNat + 1

end

end A284721.P3047893716387179746

/-! ## A284721.P9134639462700119712

`A007947(A381805(2*n+1)/2)`
-/

namespace A284721.P9134639462700119712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A381805 (2 * n + 1) : ℚ) / 2)).toNat

end

end A284721.P9134639462700119712

/-! ## A284721.P4211722171673750087

`sqrt(A089090(3*n+n+2))`
-/

namespace A284721.P4211722171673750087
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A089090 (3 * n + (n + 2)) : ℝ)

end

end A284721.P4211722171673750087

/-! ## A284721.P469415068914726446

`A071222(4*n+1)+1`
-/

namespace A284721.P469415068914726446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (4 * n + 1) + 1

end

end A284721.P469415068914726446

/-!
# A284722: (2n+1-A284721(n))/2.

The programs for A284722, there is no canonical definition to state claims against.
-/

/-! ## A284722.P13749898543011206296

`(2*n+1-A284721(n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284722.P13749898543011206296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) + (1 - A284721 n) : ℚ) / 2

end

end A284722.P13749898543011206296

/-! ## A284722.P15627015985722850185

`n-floor(A284721(n)/2)`
-/

namespace A284722.P15627015985722850185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(A284721 n : ℚ) / 2⌋

end

end A284722.P15627015985722850185

/-! ## A284722.P1928607614553632092

`n-A213852(8*(n+7))`
-/

namespace A284722.P1928607614553632092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A213852 (8 * (n + 7))

end

end A284722.P1928607614553632092

/-! ## A284722.P11661173745952611504

`A349447(A284721(n))+n`
-/

namespace A284722.P11661173745952611504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349447 (A284721 n).toNat + (n : ℤ)

end

end A284722.P11661173745952611504

/-! ## A284722.P11353245047777085116

`n-A071222(A017101(n))/2`
-/

namespace A284722.P11353245047777085116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A071222 (A017101 n).toNat : ℚ) / 2

end

end A284722.P11353245047777085116

/-! ## A284722.P8377813242715481059

`(A005408(n)-A284721(n))/2`
-/

namespace A284722.P8377813242715481059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - A284721 n : ℚ) / 2

end

end A284722.P8377813242715481059

/-! ## A284722.P16921674573616859936

`n-A004526(A053670(∑[n]+1))`
-/

namespace A284722.P16921674573616859936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 (A053670 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A284722.P16921674573616859936

/-! ## A284722.P8947159871022183467

`n-A000009(p?[A329900(n+1)])`
-/

namespace A284722.P8947159871022183467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000009 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A284722.P8947159871022183467

/-! ## A284722.P17919738339063824471

`n-A057872(p?[A329900(n+1)])`
-/

namespace A284722.P17919738339063824471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057872 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A284722.P17919738339063824471

/-!
# A284723: Smallest odd prime that is relatively prime to n.

The programs for A284723, there is no canonical definition to state claims against.
-/

/-! ## A284723.P7103496907226521250

`A355001(2*(n+1))`
-/

namespace A284723.P7103496907226521250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355001 (2 * (n + 1))

end

end A284723.P7103496907226521250

/-!
# A284724: a(n) = (1/2) * smallest even number missing from [A280864(1), ..., A280864(n-1)].

The programs for A284724, there is no canonical definition to state claims against.
-/

/-! ## A284724.P17282551147362807599

`A064415(or(A000040(n+1), A335837(n)))`
-/

namespace A284724.P17282551147362807599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (Int.lor (A000040 (n + 1)) (A335837 n)).toNat

end

end A284724.P17282551147362807599

/-! ## A284724.P10351263992021583294

`∑[A079930(3*n+7)%2]`
-/

namespace A284724.P10351263992021583294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079930 (3 * n + 7)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284724.P10351263992021583294

/-! ## A284724.P6255348747437463486

`A325678(∑[dr(A029015(n))])`
-/

namespace A284724.P6255348747437463486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A029015 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284724.P6255348747437463486

/-! ## A284724.P14395814006377095384

`∑[A318924(∑[A001037(n)])]`
-/

namespace A284724.P14395814006377095384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318924 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284724.P14395814006377095384

/-! ## A284724.P8574637020157197780

`∑[A327183(record[A286880(n)])]`
-/

namespace A284724.P8574637020157197780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286880 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284724.P8574637020157197780

/-!
# A284728: Dimensions of certain centralizer algebras associated with Bratelli diagram QB(S_6, S_5).

The programs for A284728, there is no canonical definition to state claims against.
-/

/-! ## A284728.P4092464397588311172

`A336470(4*A053505(n))`
-/

namespace A284728.P4092464397588311172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336470 (4 * A053505 n).toNat

end

end A284728.P4092464397588311172

/-! ## A284728.P2628133557757272376

`A167701(A000047(n)-n)`
-/

namespace A284728.P2628133557757272376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167701 (A000047 n - (n : ℤ)).toNat

end

end A284728.P2628133557757272376

/-! ## A284728.P9055327791572613647

`A031265(xor(n+3, A284994(2*n+1)))`
-/

namespace A284728.P9055327791572613647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031265 (Int.xor (n + 3 : ℤ) (A284994 (2 * n + 1))).toNat

end

end A284728.P9055327791572613647

/-! ## A284728.P18048779604447476207

`A031265(xor(n+3, A284995(2*n+1)-1))`
-/

namespace A284728.P18048779604447476207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031265 (Int.xor (n + 3 : ℤ) (A284995 (2 * n + 1) - 1)).toNat

end

end A284728.P18048779604447476207

/-!
# A284729: Dimensions of certain centralizer algebras associated with Bratelli diagram B(A_6, A_5).

The programs for A284729, there is no canonical definition to state claims against.
-/

/-! ## A284729.P14560610516996880780

`2*A056273(n)-A124303(n)`
-/

namespace A284729.P14560610516996880780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056273 n - A124303 n

end

end A284729.P14560610516996880780

/-! ## A284729.P6157852505412911189

`A004277(A056273(n))-A124303(n)`
-/

namespace A284729.P6157852505412911189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A056273 n).toNat - A124303 n

end

end A284729.P6157852505412911189

/-! ## A284729.P15496965274326439369

`A004277(A056273(n))-ceil(A290075(2*n+1)/3)`
-/

namespace A284729.P15496965274326439369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A056273 n).toNat - ⌈(A290075 (2 * n + 1) : ℚ) / 3⌉

end

end A284729.P15496965274326439369

/-! ## A284729.P15286581325181069490

`A004277(A056273(n))-A007581(comp[2*(n+1)]-n)`
-/

namespace A284729.P15286581325181069490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A056273 n).toNat - A007581 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A284729.P15286581325181069490

/-!
# A284730: Dimensions of certain centralizer algebras associated with Bratelli diagram QB(A_6, A_5).

The programs for A284730, there is no canonical definition to state claims against.
-/

/-! ## A284730.P2332577345052148647

`A077766(A236560(n+3)+n!)`
-/

namespace A284730.P2332577345052148647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077766 (A236560 (n + 3) + (Nat.factorial n : ℤ)).toNat

end

end A284730.P2332577345052148647

/-! ## A284730.P2314833975243879298

`A077766(A000142(n)+3^(n%2))`
-/

namespace A284730.P2314833975243879298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077766 (A000142 n + (3 ^ (n % 2) : ℤ)).toNat

end

end A284730.P2314833975243879298

/-! ## A284730.P9624128215474565802

`A077766(A010684(n)+A000142(n))`
-/

namespace A284730.P9624128215474565802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077766 (A010684 n + A000142 n).toNat

end

end A284730.P9624128215474565802

/-! ## A284730.P15343672206787390258

`A077766(A066839(n+1)+A000142(n))`
-/

namespace A284730.P15343672206787390258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077766 (A066839 (n + 1) + A000142 n).toNat

end

end A284730.P15343672206787390258

/-!
# A284731: Square array read by antidiagonals downwards: T(n,k) = number of linear extensions of the North-East rectangular partial order NE_{n,k} that avoid the pattern 123.

The programs for A284731, there is no canonical definition to state claims against.
-/

/-! ## A284731.P16772511934459459248

`A274709(A133200(n+1))%66`
-/

namespace A284731.P16772511934459459248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274709 (A133200 (n + 1)).toNat) 66

end

end A284731.P16772511934459459248

/-! ## A284731.P9853839387262814963

`A051012(A000108(A007318(n)))`
-/

namespace A284731.P9853839387262814963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051012 (A000108 (A007318 n).toNat).toNat

end

end A284731.P9853839387262814963

/-! ## A284731.P3290375211093924903

`A087999(A000108(A028657(n)))`
-/

namespace A284731.P3290375211093924903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087999 (A000108 (A028657 n).toNat).toNat

end

end A284731.P3290375211093924903

/-! ## A284731.P10463031453681698524

`A106614(A000108(A086617(n)))`
-/

namespace A284731.P10463031453681698524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A000108 (A086617 n).toNat).toNat

end

end A284731.P10463031453681698524

/-! ## A284731.P9359633518784756466

`A091378(n)%A196365(A233579(n+1))`
-/

namespace A284731.P9359633518784756466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091378 n) (A196365 (A233579 (n + 1)).toNat)

end

end A284731.P9359633518784756466

/-!
# A284732: Square array read by antidiagonals downwards: T(n,k) = number of linear extensions of the North-East rectangular partial order NE_{n,k} that avoid the pattern 2143.

The programs for A284732, there is no canonical definition to state claims against.
-/

/-! ## A284732.P7723897180320314319

`A276611(A110657(A103997(n)²))`
-/

namespace A284732.P7723897180320314319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A110657 (A103997 n ^ 2).toNat).toNat

end

end A284732.P7723897180320314319

/-! ## A284732.P18391069838329808624

`A326453(A097712(n))+A155971(n)`
-/

namespace A284732.P18391069838329808624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326453 (A097712 n).toNat + A155971 n

end

end A284732.P18391069838329808624

/-! ## A284732.P14282031032611884

`A209344(A078122(n))%A180157(2*(n+2))`
-/

namespace A284732.P14282031032611884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209344 (A078122 n).toNat) (A180157 (2 * (n + 2)))

end

end A284732.P14282031032611884

/-!
# A284733: Row 3 of array in A284731.

The programs for A284733, there is no canonical definition to state claims against.
-/

/-! ## A284733.P17556439027490329575

`A004744(A107429(2*n+3)-A015834(n+1))`
-/

namespace A284733.P17556439027490329575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004744 (A107429 (2 * n + 3) - A015834 (n + 1)).toNat

end

end A284733.P17556439027490329575

/-!
# A284734: Column 3 of array in A284731.

The programs for A284734, there is no canonical definition to state claims against.
-/

/-! ## A284734.P15731481293235923613

`A284731(∑[n+3]+1)`
-/

namespace A284734.P15731481293235923613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284731 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284734.P15731481293235923613

/-!
# A284735: Total irregularity of Jaco graph J*_n(x).

The programs for A284735, there is no canonical definition to state claims against.
-/

/-! ## A284735.P8784460052669844292

`∑[∑[A240255(n+1)%(n+1)]]`
-/

namespace A284735.P8784460052669844292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240255 (n + 1)) (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284735.P8784460052669844292

/-! ## A284735.P5278537945140390036

`∑[A276520(A203232(n+1))]`
-/

namespace A284735.P5278537945140390036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276520 (A203232 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284735.P5278537945140390036

/-! ## A284735.P12011324337715336283

`∑[∑[A122856(A214166(n+4))]]`
-/

namespace A284735.P12011324337715336283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (A214166 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284735.P12011324337715336283

/-! ## A284735.P17129947103277896107

`A004524(record[Δ[A006514(n+1)]])`
-/

namespace A284735.P17129947103277896107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006514 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A284735.P17129947103277896107

/-!
# A284736: Fibonacci irregularity of Jaco graph J*_n(x).

The programs for A284736, there is no canonical definition to state claims against.
-/

/-! ## A284736.P6026653701354409168

`A099396(A159322(n))*A339572(n)`
-/

namespace A284736.P6026653701354409168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099396 (A159322 n).toNat * A339572 n

end

end A284736.P6026653701354409168

/-! ## A284736.P14837081667039239709

`A301506(xor(A106365(n+1), A148423(n)))`
-/

namespace A284736.P14837081667039239709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301506 (Int.xor (A106365 (n + 1)) (A148423 n)).toNat

end

end A284736.P14837081667039239709

/-!
# A284737: A condensed version of A108235.

The programs for A284737, there is no canonical definition to state claims against.
-/

/-! ## A284737.P362988974251473693

`A108235(comp[or(2, n)])`
-/

namespace A284737.P362988974251473693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108235 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A284737.P362988974251473693

/-! ## A284737.P8130253536773164754

`A108235(lt[n, xor(2, n)])`
-/

namespace A284737.P8130253536773164754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108235 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284737.P8130253536773164754

/-! ## A284737.P4101677857251482903

`A108235(and(n, -2)+n)`
-/

namespace A284737.P4101677857251482903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108235 (Int.land (n : ℤ) (-2) + (n : ℤ)).toNat

end

end A284737.P4101677857251482903

/-! ## A284737.P6092386044068241695

`A108235(or(1, n)+n-1)`
-/

namespace A284737.P6092386044068241695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108235 (Nat.lor 1 n + n - 1)

end

end A284737.P6092386044068241695

/-!
# A284738: A condensed version of A202951.

The programs for A284738, there is no canonical definition to state claims against.
-/

/-! ## A284738.P5956472311252017940

`∑[n]!%710`
-/

namespace A284738.P5956472311252017940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) % 710

end

end A284738.P5956472311252017940

/-!
# A284739: A condensed version of A202952.

The programs for A284739, there is no canonical definition to state claims against.
-/

/-! ## A284739.P16375917389313748027

`A202952(comp[or(2, n)])`
-/

namespace A284739.P16375917389313748027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202952 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A284739.P16375917389313748027

/-!
# A284740: A condensed version of A202954.

The programs for A284740, there is no canonical definition to state claims against.
-/

/-! ## A284740.P4328034499853036409

`A202954(ceil(3*n/2)+n)`
-/

namespace A284740.P4328034499853036409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202954 (⌈3 * ((n : ℚ) / 2)⌉ + (n : ℤ)).toNat

end

end A284740.P4328034499853036409

/-! ## A284740.P7652934195132824976

`A202954(A047218(n+1))+A131242(n)`
-/

namespace A284740.P7652934195132824976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202954 (A047218 (n + 1)).toNat + A131242 n

end

end A284740.P7652934195132824976

/-! ## A284740.P9743821371209722818

`A202954(A047218(n+1))+A185284(n)`
-/

namespace A284740.P9743821371209722818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202954 (A047218 (n + 1)).toNat + A185284 n

end

end A284740.P9743821371209722818

/-! ## A284740.P17523522739925855388

`A196879(n)*A202954(A047218(n+1))`
-/

namespace A284740.P17523522739925855388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 n * A202954 (A047218 (n + 1)).toNat

end

end A284740.P17523522739925855388

/-!
# A284742: Centered Platonic numbers.

The programs for A284742, there is no canonical definition to state claims against.
-/

/-! ## A284742.P3742218768014654092

`A254760(A191388(n))%A359654(n+1)`
-/

namespace A284742.P3742218768014654092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254760 (A191388 n).toNat) (A359654 (n + 1))

end

end A284742.P3742218768014654092

/-! ## A284742.P5868532072466435278

`∑[A051702(A088612(n+1)+A056273(n))]`
-/

namespace A284742.P5868532072466435278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (A088612 (n + 1) + A056273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284742.P5868532072466435278

/-! ## A284742.P13637950900403076428

`eq[A245965(A285710(n+5)), A257770(n+4)]`
-/

namespace A284742.P13637950900403076428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245965 (A285710 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257770 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284742.P13637950900403076428

/-!
# A284745: Fixed point of the morphism 0 -> 01, 1 -> 000.

The programs for A284745, there is no canonical definition to state claims against.
-/

/-! ## A284745.P4574539101861171984

`log2(A102005(n))`
-/

namespace A284745.P4574539101861171984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A102005 n : ℝ)

end

end A284745.P4574539101861171984

/-! ## A284745.P246373255318079744

`A191261(n+1)%2`
-/

namespace A284745.P246373255318079744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191261 (n + 1)) 2

end

end A284745.P246373255318079744

/-! ## A284745.P11553582322339029204

`char[A191263(n+1)-1]`
-/

namespace A284745.P11553582322339029204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284745.P11553582322339029204

/-! ## A284745.P17320868588912165887

`char[A284682(n+1)+n]`
-/

namespace A284745.P17320868588912165887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284745.P17320868588912165887

/-! ## A284745.P7292962435989826135

`1-char[A284746(n+1)-1]`
-/

namespace A284745.P7292962435989826135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284745.P7292962435989826135

/-! ## A284745.P775170298597401661

`char[record[(n+1)*A284680(n+1)]+n]`
-/

namespace A284745.P775170298597401661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284680 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284745.P775170298597401661

/-! ## A284745.P13420808985423166852

`A000328(n)%A102005(n)`
-/

namespace A284745.P13420808985423166852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A102005 n)

end

end A284745.P13420808985423166852

/-! ## A284745.P11489298828821134881

`A000466(n)%A102005(n)`
-/

namespace A284745.P11489298828821134881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000466 n) (A102005 n)

end

end A284745.P11489298828821134881

/-! ## A284745.P16130544272524277241

`A000605(n)%A102005(n)`
-/

namespace A284745.P16130544272524277241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A102005 n)

end

end A284745.P16130544272524277241

/-! ## A284745.P15875142308947381692

`A001148(n)%A102005(n)`
-/

namespace A284745.P15875142308947381692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A102005 n)

end

end A284745.P15875142308947381692

/-! ## A284745.P910322359996390017

`A001218(n)%A102005(n)`
-/

namespace A284745.P910322359996390017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A102005 n)

end

end A284745.P910322359996390017

/-! ## A284745.P6913780539742374899

`A001513(n)%A102005(n)`
-/

namespace A284745.P6913780539742374899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A102005 n)

end

end A284745.P6913780539742374899

/-! ## A284745.P6285009897582936632

`A001520(n)%A102005(n)`
-/

namespace A284745.P6285009897582936632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A102005 n)

end

end A284745.P6285009897582936632

/-! ## A284745.P502576551556104736

`A001533(n)%A102005(n)`
-/

namespace A284745.P502576551556104736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A102005 n)

end

end A284745.P502576551556104736

/-! ## A284745.P5566534737773849539

`A001535(n)%A102005(n)`
-/

namespace A284745.P5566534737773849539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001535 n) (A102005 n)

end

end A284745.P5566534737773849539

/-! ## A284745.P8393627135935409574

`A001538(n)%A102005(n)`
-/

namespace A284745.P8393627135935409574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A102005 n)

end

end A284745.P8393627135935409574

/-! ## A284745.P7791068706626870973

`A005408(n)%A102005(n)`
-/

namespace A284745.P7791068706626870973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) (A102005 n)

end

end A284745.P7791068706626870973

/-! ## A284745.P7077158370967929232

`A008379(n)%A102005(n)`
-/

namespace A284745.P7077158370967929232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008379 n) (A102005 n)

end

end A284745.P7077158370967929232

/-! ## A284745.P6878371414448274922

`A016760(n)%A102005(n)`
-/

namespace A284745.P6878371414448274922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A102005 n)

end

end A284745.P6878371414448274922

/-!
# A284746: Positions of 0 in A284745; complement of A191263.

The programs for A284746, there is no canonical definition to state claims against.
-/

/-! ## A284746.P5554662317692244965

`(A191263(n+1)+n+1)/3`
-/

namespace A284746.P5554662317692244965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191263 (n + 1) + (n + 1 : ℤ) : ℚ) / 3

end

end A284746.P5554662317692244965

/-! ## A284746.P17882008865900323261

`∪[A191262(n+1), A191264(n+1)]`
-/

namespace A284746.P17882008865900323261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A284746.P17882008865900323261

/-! ## A284746.P13054992651388735421

`∑[A284680(n+1)+1]-A284680(n+1)`
-/

namespace A284746.P13054992651388735421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284680 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A284680 (n + 1)

end

end A284746.P13054992651388735421

/-! ## A284746.P1495584079230047059

`lt[A102005(n), 2]+1`
-/

namespace A284746.P1495584079230047059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102005 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284746.P1495584079230047059

/-!
# A284747: Number of proper colorings of the 2n-gon with 2 instances of each of n colors under dihedral (rotational and reflectional) symmetry.

The programs for A284747, there is no canonical definition to state claims against.
-/

/-! ## A284747.P11314959866737206107

`A004523(A373855(n)+1)`
-/

namespace A284747.P11314959866737206107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A373855 n + 1).toNat

end

end A284747.P11314959866737206107

/-!
# A284748: Decimal expansion of the sum of reciprocals of composite powers.

The programs for A284748, there is no canonical definition to state claims against.
-/

/-! ## A284748.P4508007024451872239

`9-A136141(n)`
-/

namespace A284748.P4508007024451872239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A136141 n

end

end A284748.P4508007024451872239

/-!
# A284749: {001->2}-transform of the infinite Fibonacci word A003849.

The programs for A284749, the canonical program `A284749.P11495634495222630683` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284749 has offset 1).

The definition of A284749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284749.P11495634495222630683

`A286746(n-A286746(n+1)+1)+A286746(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A284749

/-- `A286746(n-A286746(n+1)+1)+A286746(n+1)` -/
def P11495634495222630683.Spec : Prop :=
  ∀ n, P11495634495222630683.a n = A284749 (n + 1)

theorem P11495634495222630683.correct : P11495634495222630683.Spec := by
  intro n
  simp only [A284749, Nat.add_sub_cancel]

end A284749

/-! ## A284749.P8252856362315438971

`log2(Δ[A190723(n+1)])`
-/

namespace A284749.P8252856362315438971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190723 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A284749.P8252856362315438971

namespace A284749

/-- `log2(Δ[A190723(n+1)])` -/
def P8252856362315438971.Spec : Prop :=
  ∀ n, P8252856362315438971.a n = (A284749 (n + 1) : ℝ)

end A284749

/-! ## A284749.P5845054426051308536

`A000720(Δ[A190723(n+1)])`
-/

namespace A284749.P5845054426051308536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A284749.P5845054426051308536

namespace A284749

/-- `A000720(Δ[A190723(n+1)])` -/
def P5845054426051308536.Spec : Prop :=
  ∀ n, P5845054426051308536.a n = A284749 (n + 1)

end A284749

/-! ## A284749.P6550152692567388281

`A001222(Δ[A190723(n+1)])`
-/

namespace A284749.P6550152692567388281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A284749.P6550152692567388281

namespace A284749

/-- `A001222(Δ[A190723(n+1)])` -/
def P6550152692567388281.Spec : Prop :=
  ∀ n, P6550152692567388281.a n = A284749 (n + 1)

end A284749

/-! ## A284749.P18126342739500593460

`A001221(A190723(Δ[A190723(n+1)]²))`
-/

namespace A284749.P18126342739500593460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A190723 ((f1 (n + 1) - f1 n) ^ 2).toNat).toNat

end

end A284749.P18126342739500593460

namespace A284749

/-- `A001221(A190723(Δ[A190723(n+1)]²))` -/
def P18126342739500593460.Spec : Prop :=
  ∀ n, P18126342739500593460.a n = A284749 (n + 1)

end A284749

/-! ## A284749.P7051388674052032848

`A285680(record[A285680(n+2)+n])`
-/

namespace A284749.P7051388674052032848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285680 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285680 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A284749.P7051388674052032848

namespace A284749

/-- `A285680(record[A285680(n+2)+n])` -/
def P7051388674052032848.Spec : Prop :=
  ∀ n, P7051388674052032848.a n = A284749 (n + 1)

end A284749

/-! ## A284749.P16924018891269376787

`A159917(eq[1-A005614(n), A189661(n+1)])`
-/

namespace A284749.P16924018891269376787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A284749.P16924018891269376787

namespace A284749

/-- `A159917(eq[1-A005614(n), A189661(n+1)])` -/
def P16924018891269376787.Spec : Prop :=
  ∀ n, P16924018891269376787.a n = A284749 (n + 1)

end A284749

/-! ## A284749.P11335417967425210719

`A159917(eq[A048679(n)%2, A189661(n+1)])`
-/

namespace A284749.P11335417967425210719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048679 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A284749.P11335417967425210719

namespace A284749

/-- `A159917(eq[A048679(n)%2, A189661(n+1)])` -/
def P11335417967425210719.Spec : Prop :=
  ∀ n, P11335417967425210719.a n = A284749 (n + 1)

end A284749

/-! ## A284749.P13613531114639739385

`A159917(eq[A003849(n), A242082(n)])`
-/

namespace A284749.P13613531114639739385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A284749.P13613531114639739385

namespace A284749

/-- `A159917(eq[A003849(n), A242082(n)])` -/
def P13613531114639739385.Spec : Prop :=
  ∀ n, P13613531114639739385.a n = A284749 (n + 1)

end A284749

/-!
# A284750: a(n) = least k > 0 such that k * n in factorial base representation contains only 0's and 1's.

The programs for A284750, there is no canonical definition to state claims against.
-/

/-! ## A284750.P15022975846337127649

`A286820(n+1)/(n+1)`
-/

namespace A284750.P15022975846337127649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286820 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A284750.P15022975846337127649

/-!
# A284751: Fixed point of the morphism 0 -> 01, 1 -> 0001.

The programs for A284751, the canonical program `A284751.P4794700435670867007` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284751 has offset 1).

The definition of A284751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284751.P1584752101940665038

`char[A086398(n+1)]`
-/

namespace A284751.P1584752101940665038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284751.P1584752101940665038

namespace A284751

/-- `char[A086398(n+1)]` -/
def P1584752101940665038.Spec : Prop :=
  ∀ n, (P1584752101940665038.a n : ℤ) = A284751 (n + 1)

end A284751

/-! ## A284751.P4794700435670867007

`A285301(xor(1, n)+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284751

/-- `A285301(xor(1, n)+1)` -/
def P4794700435670867007.Spec : Prop :=
  ∀ n, P4794700435670867007.a n = A284751 (n + 1)

theorem P4794700435670867007.correct : P4794700435670867007.Spec := by
  intro n
  simp only [A284751, Nat.add_sub_cancel]

end A284751

/-! ## A284751.P5488032082693568658

`char[A284753(n+1)-1]`
-/

namespace A284751.P5488032082693568658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284753 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284751.P5488032082693568658

namespace A284751

/-- `char[A284753(n+1)-1]` -/
def P5488032082693568658.Spec : Prop :=
  ∀ n, (P5488032082693568658.a n : ℤ) = A284751 (n + 1)

end A284751

/-! ## A284751.P502146486476726206

`char[A080903(n+1)-2]`
-/

namespace A284751.P502146486476726206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080903 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284751.P502146486476726206

namespace A284751

/-- `char[A080903(n+1)-2]` -/
def P502146486476726206.Spec : Prop :=
  ∀ n, (P502146486476726206.a n : ℤ) = A284751 (n + 1)

end A284751

/-! ## A284751.P2232596951520159693

`char[A284371(n+1)+n]`
-/

namespace A284751.P2232596951520159693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284751.P2232596951520159693

namespace A284751

/-- `char[A284371(n+1)+n]` -/
def P2232596951520159693.Spec : Prop :=
  ∀ n, (P2232596951520159693.a n : ℤ) = A284751 (n + 1)

end A284751

/-! ## A284751.P10115497800303079103

`1-char[A284752(n+1)-1]`
-/

namespace A284751.P10115497800303079103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284751.P10115497800303079103

namespace A284751

/-- `1-char[A284752(n+1)-1]` -/
def P10115497800303079103.Spec : Prop :=
  ∀ n, P10115497800303079103.a n = A284751 (n + 1)

end A284751

/-! ## A284751.P3979658248659972523

`char[2*A026363(n+1)-1]`
-/

namespace A284751.P3979658248659972523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026363 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284751.P3979658248659972523

namespace A284751

/-- `char[2*A026363(n+1)-1]` -/
def P3979658248659972523.Spec : Prop :=
  ∀ n, (P3979658248659972523.a n : ℤ) = A284751 (n + 1)

end A284751

/-! ## A284751.P13407176092163821159

`char[A026364(n+1)-(n+1)]`
-/

namespace A284751.P13407176092163821159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026364 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284751.P13407176092163821159

namespace A284751

/-- `char[A026364(n+1)-(n+1)]` -/
def P13407176092163821159.Spec : Prop :=
  ∀ n, (P13407176092163821159.a n : ℤ) = A284751 (n + 1)

end A284751

/-! ## A284751.P2849212842450655674

`(a(n-1)+1)*A285301(n)` with `a(0)=0`
-/

namespace A284751.P2849212842450655674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * A285301 n

end

end A284751.P2849212842450655674

namespace A284751

/-- `(a(n-1)+1)*A285301(n)` -/
def P2849212842450655674.Spec : Prop :=
  ∀ n, P2849212842450655674.a n = A284751 (n + 1)

end A284751

/-! ## A284751.P16509407434885818423

`A285301(a(n-1)+a(n-1)+n)` with `a(0)=0`
-/

namespace A284751.P16509407434885818423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A285301 (a (n - 1) + (a (n - 1) + (n : ℤ))).toNat

end

end A284751.P16509407434885818423

namespace A284751

/-- `A285301(a(n-1)+a(n-1)+n)` -/
def P16509407434885818423.Spec : Prop :=
  ∀ n, P16509407434885818423.a n = A284751 (n + 1)

end A284751

/-! ## A284751.P3175396867520562900

`A285301(n-a(n-1))-a(n-1)` with `a(0)=0`
-/

namespace A284751.P3175396867520562900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A285301 ((n : ℤ) - a (n - 1)).toNat - a (n - 1)

end

end A284751.P3175396867520562900

namespace A284751

/-- `A285301(n-a(n-1))-a(n-1)` -/
def P3175396867520562900.Spec : Prop :=
  ∀ n, P3175396867520562900.a n = A284751 (n + 1)

end A284751

/-! ## A284751.P9533366896619768057

`A285301(A004442(n)+1)`
-/

namespace A284751.P9533366896619768057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (A004442 n + 1).toNat

end

end A284751.P9533366896619768057

namespace A284751

/-- `A285301(A004442(n)+1)` -/
def P9533366896619768057.Spec : Prop :=
  ∀ n, P9533366896619768057.a n = A284751 (n + 1)

end A284751

/-! ## A284751.P11599695637534813173

`A285301(A014681(n+1))`
-/

namespace A284751.P11599695637534813173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (A014681 (n + 1)).toNat

end

end A284751.P11599695637534813173

namespace A284751

/-- `A285301(A014681(n+1))` -/
def P11599695637534813173.Spec : Prop :=
  ∀ n, P11599695637534813173.a n = A284751 (n + 1)

end A284751

/-! ## A284751.P3775070633155260832

`A285301(A103889(n+1))`
-/

namespace A284751.P3775070633155260832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (A103889 (n + 1)).toNat

end

end A284751.P3775070633155260832

namespace A284751

/-- `A285301(A103889(n+1))` -/
def P3775070633155260832.Spec : Prop :=
  ∀ n, P3775070633155260832.a n = A284751 (n + 1)

end A284751

/-! ## A284751.P16996178508862726088

`char[A014681(A284753(n+1))]`
-/

namespace A284751.P16996178508862726088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A284753 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284751.P16996178508862726088

namespace A284751

/-- `char[A014681(A284753(n+1))]` -/
def P16996178508862726088.Spec : Prop :=
  ∀ n, (P16996178508862726088.a n : ℤ) = A284751 (n + 1)

end A284751

/-! ## A284751.P7566006203509423927

`char[A284752(A284371(n+1))]`
-/

namespace A284751.P7566006203509423927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (A284371 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284751.P7566006203509423927

namespace A284751

/-- `char[A284752(A284371(n+1))]` -/
def P7566006203509423927.Spec : Prop :=
  ∀ n, (P7566006203509423927.a n : ℤ) = A284751 (n + 1)

end A284751

/-! ## A284751.P5740163172300135887

`A285301(2*A285301(n+1)+n)`
-/

namespace A284751.P5740163172300135887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (2 * A285301 (n + 1) + (n : ℤ)).toNat

end

end A284751.P5740163172300135887

namespace A284751

/-- `A285301(2*A285301(n+1)+n)` -/
def P5740163172300135887.Spec : Prop :=
  ∀ n, P5740163172300135887.a n = A284751 (n + 1)

end A284751

/-! ## A284751.P3913904594815009160

`A285301(A285301(n+1)+or(1, n))`
-/

namespace A284751.P3913904594815009160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (A285301 (n + 1) + (Nat.lor 1 n : ℤ)).toNat

end

end A284751.P3913904594815009160

namespace A284751

/-- `A285301(A285301(n+1)+or(1, n))` -/
def P3913904594815009160.Spec : Prop :=
  ∀ n, P3913904594815009160.a n = A284751 (n + 1)

end A284751

/-! ## A284751.P8366400922481434036

`(A086398(n+1)-A080903(n+1))/2`
-/

namespace A284751.P8366400922481434036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086398 (n + 1) - A080903 (n + 1) : ℚ) / 2

end

end A284751.P8366400922481434036

namespace A284751

/-- `(A086398(n+1)-A080903(n+1))/2` -/
def P8366400922481434036.Spec : Prop :=
  ∀ n, P8366400922481434036.a n = (A284751 (n + 1) : ℚ)

end A284751

/-!
# A284752: Positions of 0 in A284751; complement of A284753.

The programs for A284752, the canonical program `A284752.P1214330946785391422` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284752 has offset 1).

The definition of A284752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284752.P17619155897469989679

`comp[A086398(n+1)]+1`
-/

namespace A284752.P17619155897469989679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284752.P17619155897469989679

namespace A284752

/-- `comp[A086398(n+1)]+1` -/
def P17619155897469989679.Spec : Prop :=
  ∀ n, (P17619155897469989679.a n : ℤ) = A284752 (n + 1)

end A284752

/-! ## A284752.P3325578649597685275

`comp[A080903(n+1)-1]`
-/

namespace A284752.P3325578649597685275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080903 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A284752.P3325578649597685275

namespace A284752

/-- `comp[A080903(n+1)-1]` -/
def P3325578649597685275.Spec : Prop :=
  ∀ n, (P3325578649597685275.a n : ℤ) = A284752 (n + 1)

end A284752

/-! ## A284752.P11536934250688620840

`comp[2*comp[A026364(n+1)]]`
-/

namespace A284752.P11536934250688620840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026364 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A284752.P11536934250688620840

namespace A284752

/-- `comp[2*comp[A026364(n+1)]]` -/
def P11536934250688620840.Spec : Prop :=
  ∀ n, (P11536934250688620840.a n : ℤ) = A284752 (n + 1)

end A284752

/-! ## A284752.P9068224386696478472

`comp[comp[A284370(n+1)]+n]`
-/

namespace A284752.P9068224386696478472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284370 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A284752.P9068224386696478472

namespace A284752

/-- `comp[comp[A284370(n+1)]+n]` -/
def P9068224386696478472.Spec : Prop :=
  ∀ n, (P9068224386696478472.a n : ℤ) = A284752 (n + 1)

end A284752

/-! ## A284752.P661837417930374940

`comp[A284753(n+1)-1]+1`
-/

namespace A284752.P661837417930374940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284753 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284752.P661837417930374940

namespace A284752

/-- `comp[A284753(n+1)-1]+1` -/
def P661837417930374940.Spec : Prop :=
  ∀ n, (P661837417930374940.a n : ℤ) = A284752 (n + 1)

end A284752

/-! ## A284752.P11617389222260959377

`comp[A284371(n+1)+n]+1`
-/

namespace A284752.P11617389222260959377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284752.P11617389222260959377

namespace A284752

/-- `comp[A284371(n+1)+n]+1` -/
def P11617389222260959377.Spec : Prop :=
  ∀ n, (P11617389222260959377.a n : ℤ) = A284752 (n + 1)

end A284752

/-! ## A284752.P1214330946785391422

`a(n-1)+A284369(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284752

/-- `a(n-1)+A284369(n)+1` -/
def P1214330946785391422.Spec : Prop :=
  ∀ n, P1214330946785391422.a n = A284752 (n + 1)

theorem P1214330946785391422.correct : P1214330946785391422.Spec := by
  intro n
  simp only [A284752, Nat.add_sub_cancel]

end A284752

/-! ## A284752.P9927519570367549717

`comp[2*A026363(n+1)-1]+1`
-/

namespace A284752.P9927519570367549717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026363 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284752.P9927519570367549717

namespace A284752

/-- `comp[2*A026363(n+1)-1]+1` -/
def P9927519570367549717.Spec : Prop :=
  ∀ n, (P9927519570367549717.a n : ℤ) = A284752 (n + 1)

end A284752

/-! ## A284752.P14892630882242648010

`comp[record[(n+1)*A284369(n+1)]+n]+1`
-/

namespace A284752.P14892630882242648010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284369 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284752.P14892630882242648010

namespace A284752

/-- `comp[record[(n+1)*A284369(n+1)]+n]+1` -/
def P14892630882242648010.Spec : Prop :=
  ∀ n, (P14892630882242648010.a n : ℤ) = A284752 (n + 1)

end A284752

/-! ## A284752.P15763263894431963405

`A285302(n+1)-A284369(n+1)`
-/

namespace A284752.P15763263894431963405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285302 (n + 1) - A284369 (n + 1)

end

end A284752.P15763263894431963405

namespace A284752

/-- `A285302(n+1)-A284369(n+1)` -/
def P15763263894431963405.Spec : Prop :=
  ∀ n, P15763263894431963405.a n = A284752 (n + 1)

end A284752

/-! ## A284752.P6996701726513839091

`a(n-1)+A285301(a(n-1))+1` with `a(0)=1`
-/

namespace A284752.P6996701726513839091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A285301 (a (n - 1)).toNat + 1)

end

end A284752.P6996701726513839091

namespace A284752

/-- `a(n-1)+A285301(a(n-1))+1` -/
def P6996701726513839091.Spec : Prop :=
  ∀ n, P6996701726513839091.a n = A284752 (n + 1)

end A284752

/-! ## A284752.P16655733850736323663

`a(n-1)+A284751(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A284752.P16655733850736323663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A284751 (a (n - 1) + 1).toNat + 1)

end

end A284752.P16655733850736323663

namespace A284752

/-- `a(n-1)+A284751(a(n-1)+1)+1` -/
def P16655733850736323663.Spec : Prop :=
  ∀ n, P16655733850736323663.a n = A284752 (n + 1)

end A284752

/-! ## A284752.P4460373615948898188

`A285302(n+1)-A285301(A285302(n+1)-1)`
-/

namespace A284752.P4460373615948898188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285302 (n + 1) - A285301 (A285302 (n + 1) - 1).toNat

end

end A284752.P4460373615948898188

namespace A284752

/-- `A285302(n+1)-A285301(A285302(n+1)-1)` -/
def P4460373615948898188.Spec : Prop :=
  ∀ n, P4460373615948898188.a n = A284752 (n + 1)

end A284752

/-! ## A284752.P2837759455038649058

`eq[0, A284751(n+1)]+1`
-/

namespace A284752.P2837759455038649058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284752.P2837759455038649058

namespace A284752

/-- `eq[0, A284751(n+1)]+1` -/
def P2837759455038649058.Spec : Prop :=
  ∀ n, (P2837759455038649058.a n : ℤ) = A284752 (n + 1)

end A284752

/-! ## A284752.P11112018276476786731

`lt[char[A284753(n+1)], A057427(n)]`
-/

namespace A284752.P11112018276476786731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284753 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A284752.P11112018276476786731

namespace A284752

/-- `lt[char[A284753(n+1)], A057427(n)]` -/
def P11112018276476786731.Spec : Prop :=
  ∀ n, (P11112018276476786731.a n : ℤ) = A284752 (n + 1)

end A284752

/-!
# A284753: Positions of 1 in A284751; complement of A284752.

The programs for A284753, the canonical program `A284753.P14921659165875602772` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284753 has offset 1).

The definition of A284753 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026363, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284753.P11330237143884091950

`A086398(n+1)+1`
-/

namespace A284753.P11330237143884091950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1) + 1

end

end A284753.P11330237143884091950

namespace A284753

/-- `A086398(n+1)+1` -/
def P11330237143884091950.Spec : Prop :=
  ∀ n, P11330237143884091950.a n = A284753 (n + 1)

end A284753

/-! ## A284753.P14921659165875602772

`2*A026363(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284753

/-- `2*A026363(n+1)` -/
def P14921659165875602772.Spec : Prop :=
  ∀ n, P14921659165875602772.a n = A284753 (n + 1)

theorem P14921659165875602772.correct : P14921659165875602772.Spec := by
  intro n
  simp only [A284753, Nat.add_sub_cancel]

end A284753

/-! ## A284753.P15684483258250510459

`A026364(n+1)-n`
-/

namespace A284753.P15684483258250510459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026364 (n + 1) - (n : ℤ)

end

end A284753.P15684483258250510459

namespace A284753

/-- `A026364(n+1)-n` -/
def P15684483258250510459.Spec : Prop :=
  ∀ n, P15684483258250510459.a n = A284753 (n + 1)

end A284753

/-! ## A284753.P10216897662023668055

`A284371(n+1)+1+n`
-/

namespace A284753.P10216897662023668055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1) + 1 + (n : ℤ)

end

end A284753.P10216897662023668055

namespace A284753

/-- `A284371(n+1)+1+n` -/
def P10216897662023668055.Spec : Prop :=
  ∀ n, P10216897662023668055.a n = A284753 (n + 1)

end A284753

/-! ## A284753.P18091487593596379207

`∑[2*(A284751(n+1)+1)]`
-/

namespace A284753.P18091487593596379207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284751 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284753.P18091487593596379207

namespace A284753

/-- `∑[2*(A284751(n+1)+1)]` -/
def P18091487593596379207.Spec : Prop :=
  ∀ n, P18091487593596379207.a n = A284753 (n + 1)

end A284753

/-! ## A284753.P5804260037594854864

`A001478(n+1)+A026364(n+1)+1`
-/

namespace A284753.P5804260037594854864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A026364 (n + 1) + 1)

end

end A284753.P5804260037594854864

namespace A284753

/-- `A001478(n+1)+A026364(n+1)+1` -/
def P5804260037594854864.Spec : Prop :=
  ∀ n, P5804260037594854864.a n = A284753 (n + 1)

end A284753

/-! ## A284753.P12319488833119596528

`A080903(n+2)-1`
-/

namespace A284753.P12319488833119596528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080903 (n + 2) - 1

end

end A284753.P12319488833119596528

namespace A284753

/-- `A080903(n+2)-1` -/
def P12319488833119596528.Spec : Prop :=
  ∀ n, P12319488833119596528.a n = A284753 (n + 1)

end A284753

/-! ## A284753.P7237002541966280451

`∑[abs(Δ[A080903(n+1)])]`
-/

namespace A284753.P7237002541966280451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080903 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284753.P7237002541966280451

namespace A284753

/-- `∑[abs(Δ[A080903(n+1)])]` -/
def P7237002541966280451.Spec : Prop :=
  ∀ n, P7237002541966280451.a n = A284753 (n + 1)

end A284753

/-! ## A284753.P15076734787606568687

`A004277(A026363(n+1))`
-/

namespace A284753.P15076734787606568687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A026363 (n + 1)).toNat

end

end A284753.P15076734787606568687

namespace A284753

/-- `A004277(A026363(n+1))` -/
def P15076734787606568687.Spec : Prop :=
  ∀ n, P15076734787606568687.a n = A284753 (n + 1)

end A284753

/-! ## A284753.P13607977273049906625

`A005408(A026363(n+1)-1)+1`
-/

namespace A284753.P13607977273049906625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A026363 (n + 1) - 1).toNat + 1

end

end A284753.P13607977273049906625

namespace A284753

/-- `A005408(A026363(n+1)-1)+1` -/
def P13607977273049906625.Spec : Prop :=
  ∀ n, P13607977273049906625.a n = A284753 (n + 1)

end A284753

/-! ## A284753.P11726210603885676976

`A004273(A026363(n+1)+1)-1`
-/

namespace A284753.P11726210603885676976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026363 (n + 1) + 1).toNat - 1

end

end A284753.P11726210603885676976

namespace A284753

/-- `A004273(A026363(n+1)+1)-1` -/
def P11726210603885676976.Spec : Prop :=
  ∀ n, P11726210603885676976.a n = A284753 (n + 1)

end A284753

/-! ## A284753.P13005384528453529930

`A284370(2*n+1)-2*n`
-/

namespace A284753.P13005384528453529930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284370 (2 * n + 1) - (2 * n : ℤ)

end

end A284753.P13005384528453529930

namespace A284753

/-- `A284370(2*n+1)-2*n` -/
def P13005384528453529930.Spec : Prop :=
  ∀ n, P13005384528453529930.a n = A284753 (n + 1)

end A284753

/-! ## A284753.P11377589280985499781

`A285302(A284371(n+1))`
-/

namespace A284753.P11377589280985499781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285302 (A284371 (n + 1)).toNat

end

end A284753.P11377589280985499781

namespace A284753

/-- `A285302(A284371(n+1))` -/
def P11377589280985499781.Spec : Prop :=
  ∀ n, P11377589280985499781.a n = A284753 (n + 1)

end A284753

/-! ## A284753.P14256494959117064824

`filter[n+1, A284751(#)]`
-/

namespace A284753.P14256494959117064824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284751 (f1 j) = 1) n)

end

end A284753.P14256494959117064824

namespace A284753

/-- `filter[n+1, A284751(#)]` -/
def P14256494959117064824.Spec : Prop :=
  ∀ n, (P14256494959117064824.a n : ℤ) = A284753 (n + 1)

end A284753

/-! ## A284753.P10816211353147191814

`eq[1, A284751(n+1)]+1`
-/

namespace A284753.P10816211353147191814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284753.P10816211353147191814

namespace A284753

/-- `eq[1, A284751(n+1)]+1` -/
def P10816211353147191814.Spec : Prop :=
  ∀ n, (P10816211353147191814.a n : ℤ) = A284753 (n + 1)

end A284753

/-! ## A284753.P7144920441780031565

`eq[1, A285301(n+1)]+2`
-/

namespace A284753.P7144920441780031565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284753.P7144920441780031565

namespace A284753

/-- `eq[1, A285301(n+1)]+2` -/
def P7144920441780031565.Spec : Prop :=
  ∀ n, (P7144920441780031565.a n : ℤ) = A284753 (n + 1)

end A284753

/-! ## A284753.P4721715513302930509

`A014681(A086398(n+1))`
-/

namespace A284753.P4721715513302930509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A086398 (n + 1)).toNat

end

end A284753.P4721715513302930509

namespace A284753

/-- `A014681(A086398(n+1))` -/
def P4721715513302930509.Spec : Prop :=
  ∀ n, P4721715513302930509.a n = A284753 (n + 1)

end A284753

/-!
# A284756: (n + 1)^3*a(n + 1) = 2*(2*n + 1)*(5*n^2 + 5*n + 2)*a(n) - 8*n*(7*n^2 + 1)*a(n - 1) + 22*n*(n - 1)*(2*n - 1)*a(n - 2), with a(0) = 1, a(1) = 4 and a(2) = 28.

The programs for A284756, there is no canonical definition to state claims against.
-/

/-! ## A284756.P6080672409359350651

`∑[A101894(2*(n+1)²)]`
-/

namespace A284756.P6080672409359350651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101894 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284756.P6080672409359350651

/-!
# A284757: Number of solutions to Nickerson variant of quadruples version of Langford (or Langford-Skolem) problem.

The programs for A284757, there is no canonical definition to state claims against.
-/

/-! ## A284757.P8612087471450866712

`ceil(A285698(n+1)/2)`
-/

namespace A284757.P8612087471450866712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285698 (n + 1) : ℚ) / 2⌉

end

end A284757.P8612087471450866712

/-! ## A284757.P2063015709213761239

`A004525(A285698(n+1))`
-/

namespace A284757.P2063015709213761239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A285698 (n + 1)).toNat

end

end A284757.P2063015709213761239

/-! ## A284757.P3462942451280364103

`C(A047100(n), ∑[A151670(n)])`
-/

namespace A284757.P3462942451280364103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A047100 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284757.P3462942451280364103

/-! ## A284757.P9791740961752777406

`A057979(A285698(n+1)+1)`
-/

namespace A284757.P9791740961752777406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A285698 (n + 1) + 1).toNat

end

end A284757.P9791740961752777406

/-! ## A284757.P17120700179834809654

`A285698(n+1)/A000174(n)`
-/

namespace A284757.P17120700179834809654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285698 (n + 1) : ℚ) / (A000174 n : ℚ)

end

end A284757.P17120700179834809654

/-!
# A284758: The least positive integer that has exactly n different representations as Brazilian number.

The programs for A284758, there is no canonical definition to state claims against.
-/

/-! ## A284758.P17643264080776566045

`A066460(ceil(sqrt(∑[2*n])))`
-/

namespace A284758.P17643264080776566045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066460 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A284758.P17643264080776566045

/-! ## A284758.P6871534105599564433

`gcd(floor(acot(n)), A066460(n+1))`
-/

namespace A284758.P6871534105599564433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A066460 (n + 1))

end

end A284758.P6871534105599564433

/-! ## A284758.P2593055696937761080

`A066460(n+1)-A000038(n)`
-/

namespace A284758.P2593055696937761080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066460 (n + 1) - A000038 n

end

end A284758.P2593055696937761080

/-! ## A284758.P17637308280108232683

`A066460(n+1)^abs(A057428(n))`
-/

namespace A284758.P17637308280108232683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066460 (n + 1) : ℚ) ^ (|A057428 n| : ℤ)

end

end A284758.P17637308280108232683

/-! ## A284758.P12624182300153604047

`and(-A109007(n), A066460(n+1))`
-/

namespace A284758.P12624182300153604047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A109007 n) (A066460 (n + 1))

end

end A284758.P12624182300153604047

/-! ## A284758.P16779654973052003502

`A066460(n+1)%(A008417(n)+1)`
-/

namespace A284758.P16779654973052003502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066460 (n + 1)) (A008417 n + 1)

end

end A284758.P16779654973052003502

/-! ## A284758.P10114150355027544090

`A066460(n+1)/(A000038(2*n)+1)`
-/

namespace A284758.P10114150355027544090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066460 (n + 1) : ℚ) / (A000038 (2 * n) + 1 : ℚ)

end

end A284758.P10114150355027544090

/-! ## A284758.P15969361907861788085

`A066460(n+1)^A001221(A001316(n))`
-/

namespace A284758.P15969361907861788085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066460 (n + 1) : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A284758.P15969361907861788085

/-! ## A284758.P14410428259664786508

`A066460(n+1)^A001222(A105560(n+1))`
-/

namespace A284758.P14410428259664786508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066460 (n + 1) : ℚ) ^ (A001222 (A105560 (n + 1)).toNat : ℤ)

end

end A284758.P14410428259664786508

/-! ## A284758.P2688720146392225398

`A066460(n+1)/A276086(A000038(n)/(n+1))`
-/

namespace A284758.P2688720146392225398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066460 (n + 1) : ℚ) / (A276086 (SequenceMachineLib.roundAway ((A000038 n : ℚ) / (n + 1 : ℚ))).toNat : ℚ)

end

end A284758.P2688720146392225398

/-!
# A284759: a(n) = (Sum_{i=1..n-1} i^(n-2)) mod n^3.

The programs for A284759, there is no canonical definition to state claims against.
-/

/-! ## A284759.P10806371735049892234

`A284760(n+1)%Δ[A000537(n)]`
-/

namespace A284759.P10806371735049892234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284760 (n + 1)) (f1 (n + 1) - f1 n)

end

end A284759.P10806371735049892234

/-! ## A284759.P13965266846957796494

`(A055999(n+7)+1)%A097584(n+1)`
-/

namespace A284759.P13965266846957796494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055999 (n + 7) + 1) (A097584 (n + 1))

end

end A284759.P13965266846957796494

/-!
# A284760: a(n) = Sum_{i=1..n-1}(i^(n-2)) mod n^4.

The programs for A284760, there is no canonical definition to state claims against.
-/

/-! ## A284760.P2789486413464607732

`A002266(A167144(n)+1)`
-/

namespace A284760.P2789486413464607732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A167144 n + 1).toNat

end

end A284760.P2789486413464607732

/-! ## A284760.P17191982625577685817

`A002266(or(1, A167144(n)))`
-/

namespace A284760.P17191982625577685817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Int.lor 1 (A167144 n)).toNat

end

end A284760.P17191982625577685817

/-!
# A284761: a(n) = gcd(A279513(n), A279513(n+1)).

The programs for A284761, there is no canonical definition to state claims against.
-/

/-! ## A284761.P10175760046123151193

`gcd(A000027(A361268(n+2)), A361268(n+1))`
-/

namespace A284761.P10175760046123151193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A361268 (n + 2)).toNat) (A361268 (n + 1))

end

end A284761.P10175760046123151193

/-! ## A284761.P14516565880214210146

`gcd(A162623(2*(n+1)), A162623(A208450(n+1)))`
-/

namespace A284761.P14516565880214210146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A162623 (2 * (n + 1))) (A162623 (A208450 (n + 1)).toNat)

end

end A284761.P14516565880214210146

/-! ## A284761.P10510519007027665928

`gcd(A036883(n+1), A343223(n+1))`
-/

namespace A284761.P10510519007027665928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036883 (n + 1)) (A343223 (n + 1))

end

end A284761.P10510519007027665928

/-! ## A284761.P10508890940115348979

`gcd(A112624(n+1), A175955(n+1))`
-/

namespace A284761.P10508890940115348979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112624 (n + 1)) (A175955 (n + 1))

end

end A284761.P10508890940115348979

/-!
# A284762: Total number of subsets of X that are open and closed and connected summed over all distinct topological spaces X that can be placed on an n-set.

The programs for A284762, there is no canonical definition to state claims against.
-/

/-! ## A284762.P706112138388272043

`A315953((n-1)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A284762.P706112138388272043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A315953 (((n : ℤ) - 1) * a (n - 1)).toNat

end

end A284762.P706112138388272043

/-!
# A284763: Numbers n such that A279513(n) is squarefree.

The programs for A284763, the canonical program `A284763.P1069890231272640625` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284763 has offset 1).

The definition of A284763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284763.P1069890231272640625

`eq[1, A008833(A000026(n+1))]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A284763

/-- `eq[1, A008833(A000026(n+1))]+1` -/
def P1069890231272640625.Spec : Prop :=
  ∀ n, (P1069890231272640625.a n : ℤ) = A284763 (n + 1)

theorem P1069890231272640625.correct : P1069890231272640625.Spec := by
  intro n
  simp only [A284763, Nat.add_sub_cancel]

end A284763

/-! ## A284763.P3862172069002411761

`eq[A000026(n+1), A336965(n+1)]+1`
-/

namespace A284763.P3862172069002411761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A284763.P3862172069002411761

namespace A284763

/-- `eq[A000026(n+1), A336965(n+1)]+1` -/
def P3862172069002411761.Spec : Prop :=
  ∀ n, (P3862172069002411761.a n : ℤ) = A284763 (n + 1)

end A284763

/-! ## A284763.P9045275288465962093

`record[A000027(n+1)/A000188(A000026(n+1))]`
-/

namespace A284763.P9045275288465962093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000188 (A000026 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284763.P9045275288465962093

namespace A284763

/-- `record[A000027(n+1)/A000188(A000026(n+1))]` -/
def P9045275288465962093.Spec : Prop :=
  ∀ n, P9045275288465962093.a n = (A284763 (n + 1) : ℚ)

end A284763

/-!
# A284764: Number of n X n 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A284764, there is no canonical definition to state claims against.
-/

/-! ## A284764.P4930497106609569192

`A284771(∑[4*n]+1)`
-/

namespace A284764.P4930497106609569192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284764.P4930497106609569192

/-! ## A284764.P4127479185807669238

`record[A284771(A152271(n²))]`
-/

namespace A284764.P4127479185807669238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284764.P4127479185807669238

/-! ## A284764.P7036292347990715455

`record[A284771(∑[A266981(n)])]`
-/

namespace A284764.P7036292347990715455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284764.P7036292347990715455

/-! ## A284764.P1076182397856689324

`record[A284771(Δ[A235355(n)])]`
-/

namespace A284764.P1076182397856689324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284764.P1076182397856689324

/-!
# A284765: Number of n X 2 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A284765, there is no canonical definition to state claims against.
-/

/-! ## A284765.P2342429209890029298

`A284771(∑[n+1]+2)`
-/

namespace A284765.P2342429209890029298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A284765.P2342429209890029298

/-! ## A284765.P12222916706604236428

`record[A284771(n+1)-A284455(n+1)²]`
-/

namespace A284765.P12222916706604236428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (n + 1) - A284455 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284765.P12222916706604236428

/-! ## A284765.P4633377480133340945

`A285750(∑[n+2])`
-/

namespace A284765.P4633377480133340945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284765.P4633377480133340945

/-! ## A284765.P3118420863693349315

`record[A284771(∑[A152271(n)])]`
-/

namespace A284765.P3118420863693349315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284765.P3118420863693349315

/-! ## A284765.P17290110789829673957

`record[A285750(∑[A152271(n)])]`
-/

namespace A284765.P17290110789829673957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285750 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284765.P17290110789829673957

/-!
# A284766: Number of n X 3 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A284766, there is no canonical definition to state claims against.
-/

/-! ## A284766.P3316904702655717819

`A284771(∑[n+2]+4)`
-/

namespace A284766.P3316904702655717819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A284766.P3316904702655717819

/-! ## A284766.P11965340106534471875

`gcd(A000038(n), A284771(A167614(n+1)))`
-/

namespace A284766.P11965340106534471875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A284771 (A167614 (n + 1)).toNat)

end

end A284766.P11965340106534471875

/-! ## A284766.P15142440848940989550

`lcm(A000034(n), A284771(A167614(n+1)))`
-/

namespace A284766.P15142440848940989550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A284771 (A167614 (n + 1)).toNat)

end

end A284766.P15142440848940989550

/-! ## A284766.P13468003728718327671

`or(A000007(n), A284771(A167614(n+1)))`
-/

namespace A284766.P13468003728718327671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A284771 (A167614 (n + 1)).toNat)

end

end A284766.P13468003728718327671

/-! ## A284766.P18218087947240299712

`A284771(A167614(n+1))%A197668(n+1)`
-/

namespace A284766.P18218087947240299712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284771 (A167614 (n + 1)).toNat) (A197668 (n + 1))

end

end A284766.P18218087947240299712

/-!
# A284767: Number of n X 4 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A284767, there is no canonical definition to state claims against.
-/

/-! ## A284767.P8696213138055267517

`A284771(A374004(n+1))`
-/

namespace A284767.P8696213138055267517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (A374004 (n + 1)).toNat

end

end A284767.P8696213138055267517

/-! ## A284767.P14743370332620372406

`A284771(A052905(n)+9)`
-/

namespace A284767.P14743370332620372406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (A052905 n + 9).toNat

end

end A284767.P14743370332620372406

/-! ## A284767.P10613976128495466120

`A284771(A055999(n)+10)`
-/

namespace A284767.P10613976128495466120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (A055999 n + 10).toNat

end

end A284767.P10613976128495466120

/-! ## A284767.P11498345695458531193

`A284771(A167614(n+2)+1)`
-/

namespace A284767.P11498345695458531193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (A167614 (n + 2) + 1).toNat

end

end A284767.P11498345695458531193

/-! ## A284767.P2926035346602405029

`A284771(A166136(n+2)-2)`
-/

namespace A284767.P2926035346602405029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (A166136 (n + 2) - 2).toNat

end

end A284767.P2926035346602405029

/-!
# A284768: Number of n X 5 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A284768, there is no canonical definition to state claims against.
-/

/-! ## A284768.P10085103812232874630

`A284771(A374005(n+1))`
-/

namespace A284768.P10085103812232874630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (A374005 (n + 1)).toNat

end

end A284768.P10085103812232874630

/-! ## A284768.P10253357448276728734

`A284771(A155212(n)+13)`
-/

namespace A284768.P10253357448276728734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (A155212 n + 13).toNat

end

end A284768.P10253357448276728734

/-! ## A284768.P13262659389866646819

`A284771(Δ[A264443(n)])`
-/

namespace A284768.P13262659389866646819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (f1 (n + 1) - f1 n).toNat

end

end A284768.P13262659389866646819

/-! ## A284768.P17641051903253212906

`A284771(A056115(n)+11)`
-/

namespace A284768.P17641051903253212906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (A056115 n + 11).toNat

end

end A284768.P17641051903253212906

/-! ## A284768.P3244101669015909748

`A284771(eq[2, A092921(n)])`
-/

namespace A284768.P3244101669015909748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284768.P3244101669015909748

/-!
# A284769: Number of n X 6 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A284769, there is no canonical definition to state claims against.
-/

/-! ## A284769.P18428214989834056681

`A284771(A374007(n+1))`
-/

namespace A284769.P18428214989834056681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (A374007 (n + 1)).toNat

end

end A284769.P18428214989834056681

/-! ## A284769.P12105871819538015752

`A284771(A166136(n+4))`
-/

namespace A284769.P12105871819538015752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (A166136 (n + 4)).toNat

end

end A284769.P12105871819538015752

/-! ## A284769.P9864574920824782931

`A284771(eq[5, A193592(n)])`
-/

namespace A284769.P9864574920824782931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284769.P9864574920824782931

/-! ## A284769.P4611482873055352745

`A284771(eq[8, A185782(n+1)])`
-/

namespace A284769.P4611482873055352745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284769.P4611482873055352745

/-! ## A284769.P11769330578135990838

`A284771(eq[16, A057728(n+1)])`
-/

namespace A284769.P11769330578135990838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284769.P11769330578135990838

/-!
# A284770: Number of n X 7 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 one less than the number of 0's adjacent to some 1.

The programs for A284770, there is no canonical definition to state claims against.
-/

/-! ## A284770.P2964185631407147923

`A284771(A374008(n+1))`
-/

namespace A284770.P2964185631407147923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (A374008 (n + 1)).toNat

end

end A284770.P2964185631407147923

/-! ## A284770.P11110026148684932925

`A284771(eq[8, A131818(n+1)])`
-/

namespace A284770.P11110026148684932925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284770.P11110026148684932925

/-! ## A284770.P14447682332174645784

`A284771(eq[7, A134868(n+1)]+1)`
-/

namespace A284770.P14447682332174645784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A284770.P14447682332174645784

/-! ## A284770.P10670536848575221869

`A284771(A055999(n+4))`
-/

namespace A284770.P10670536848575221869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (A055999 (n + 4)).toNat

end

end A284770.P10670536848575221869

/-! ## A284770.P12766002155441932616

`A284771(eq[6, A193592(n)])`
-/

namespace A284770.P12766002155441932616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284770.P12766002155441932616

/-!
# A284772: Fixed point of the morphism 0 -> 01, 1 -> 0010.

The programs for A284772, the canonical program `A284772.P17040323948208132760` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284772 has offset 1).

The definition of A284772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284772.P17040323948208132760

`A286389(n)%2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284772

/-- `A286389(n)%2` -/
def P17040323948208132760.Spec : Prop :=
  ∀ n, P17040323948208132760.a n = A284772 (n + 1)

theorem P17040323948208132760.correct : P17040323948208132760.Spec := by
  intro n
  simp only [A284772, Nat.add_sub_cancel]

end A284772

/-! ## A284772.P4150032756400852750

`A284774(n+1)%2`
-/

namespace A284772.P4150032756400852750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284774 (n + 1)) 2

end

end A284772.P4150032756400852750

namespace A284772

/-- `A284774(n+1)%2` -/
def P4150032756400852750.Spec : Prop :=
  ∀ n, P4150032756400852750.a n = A284772 (n + 1)

end A284772

/-! ## A284772.P1857327415689184095

`char[A026367(2*n+1)]`
-/

namespace A284772.P1857327415689184095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284772.P1857327415689184095

namespace A284772

/-- `char[A026367(2*n+1)]` -/
def P1857327415689184095.Spec : Prop :=
  ∀ n, (P1857327415689184095.a n : ℤ) = A284772 (n + 1)

end A284772

/-! ## A284772.P10808031573773006152

`char[A283965(n+1)+n]`
-/

namespace A284772.P10808031573773006152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283965 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284772.P10808031573773006152

namespace A284772

/-- `char[A283965(n+1)+n]` -/
def P10808031573773006152.Spec : Prop :=
  ∀ n, (P10808031573773006152.a n : ℤ) = A284772 (n + 1)

end A284772

/-! ## A284772.P18073233360134226224

`A000035(A286389(n))`
-/

namespace A284772.P18073233360134226224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A286389 n).toNat

end

end A284772.P18073233360134226224

namespace A284772

/-- `A000035(A286389(n))` -/
def P18073233360134226224.Spec : Prop :=
  ∀ n, P18073233360134226224.a n = A284772 (n + 1)

end A284772

/-! ## A284772.P4236956612377280340

`and(A054977(n), A286389(n))`
-/

namespace A284772.P4236956612377280340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A286389 n)

end

end A284772.P4236956612377280340

namespace A284772

/-- `and(A054977(n), A286389(n))` -/
def P4236956612377280340.Spec : Prop :=
  ∀ n, P4236956612377280340.a n = A284772 (n + 1)

end A284772

/-! ## A284772.P17159476629943457686

`and(A057427(n), A286389(n))`
-/

namespace A284772.P17159476629943457686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A286389 n)

end

end A284772.P17159476629943457686

namespace A284772

/-- `and(A057427(n), A286389(n))` -/
def P17159476629943457686.Spec : Prop :=
  ∀ n, P17159476629943457686.a n = A284772 (n + 1)

end A284772

/-! ## A284772.P7282500544703118227

`and(A158388(n), A286389(n))`
-/

namespace A284772.P7282500544703118227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A286389 n)

end

end A284772.P7282500544703118227

namespace A284772

/-- `and(A158388(n), A286389(n))` -/
def P7282500544703118227.Spec : Prop :=
  ∀ n, P7282500544703118227.a n = A284772 (n + 1)

end A284772

/-! ## A284772.P10496690535272195871

`A370118(A044052(n+2))`
-/

namespace A284772.P10496690535272195871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370118 (A044052 (n + 2)).toNat

end

end A284772.P10496690535272195871

namespace A284772

/-- `A370118(A044052(n+2))` -/
def P10496690535272195871.Spec : Prop :=
  ∀ n, P10496690535272195871.a n = A284772 (n + 1)

end A284772

/-! ## A284772.P17450303093321435114

`A283964(2*n+1)%2`
-/

namespace A284772.P17450303093321435114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283964 (2 * n + 1)) 2

end

end A284772.P17450303093321435114

namespace A284772

/-- `A283964(2*n+1)%2` -/
def P17450303093321435114.Spec : Prop :=
  ∀ n, P17450303093321435114.a n = A284772 (n + 1)

end A284772

/-! ## A284772.P5975011397291726575

`A000035(A284774(n+1))`
-/

namespace A284772.P5975011397291726575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A284774 (n + 1)).toNat

end

end A284772.P5975011397291726575

namespace A284772

/-- `A000035(A284774(n+1))` -/
def P5975011397291726575.Spec : Prop :=
  ∀ n, P5975011397291726575.a n = A284772 (n + 1)

end A284772

/-! ## A284772.P1867762034257210902

`A284851(A026366(A284853(A284853(n+1))))`
-/

namespace A284772.P1867762034257210902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (A026366 (A284853 (A284853 (n + 1)).toNat).toNat).toNat

end

end A284772.P1867762034257210902

namespace A284772

/-- `A284851(A026366(A284853(A284853(n+1))))` -/
def P1867762034257210902.Spec : Prop :=
  ∀ n, P1867762034257210902.a n = A284772 (n + 1)

end A284772

/-! ## A284772.P1857612586426011820

`A156595(A044060(n+1))`
-/

namespace A284772.P1857612586426011820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 (A044060 (n + 1)).toNat

end

end A284772.P1857612586426011820

namespace A284772

/-- `A156595(A044060(n+1))` -/
def P1857612586426011820.Spec : Prop :=
  ∀ n, P1857612586426011820.a n = A284772 (n + 1)

end A284772

/-! ## A284772.P2479153333390993367

`and(A077860(n), A286389(n))`
-/

namespace A284772.P2479153333390993367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A286389 n)

end

end A284772.P2479153333390993367

namespace A284772

/-- `and(A077860(n), A286389(n))` -/
def P2479153333390993367.Spec : Prop :=
  ∀ n, P2479153333390993367.a n = A284772 (n + 1)

end A284772

/-! ## A284772.P7646926131328478919

`and(A000051(n), A286389(n))`
-/

namespace A284772.P7646926131328478919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A286389 n)

end

end A284772.P7646926131328478919

namespace A284772

/-- `and(A000051(n), A286389(n))` -/
def P7646926131328478919.Spec : Prop :=
  ∀ n, P7646926131328478919.a n = A284772 (n + 1)

end A284772

/-! ## A284772.P14157544118415783312

`and(A083318(n), A286389(n))`
-/

namespace A284772.P14157544118415783312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A286389 n)

end

end A284772.P14157544118415783312

namespace A284772

/-- `and(A083318(n), A286389(n))` -/
def P14157544118415783312.Spec : Prop :=
  ∀ n, P14157544118415783312.a n = A284772 (n + 1)

end A284772

/-! ## A284772.P1543699843099894284

`and(A048578(n), A286389(n))`
-/

namespace A284772.P1543699843099894284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A286389 n)

end

end A284772.P1543699843099894284

namespace A284772

/-- `and(A048578(n), A286389(n))` -/
def P1543699843099894284.Spec : Prop :=
  ∀ n, P1543699843099894284.a n = A284772 (n + 1)

end A284772

/-! ## A284772.P3216658760867862175

`and(A114001(n), A286389(n))`
-/

namespace A284772.P3216658760867862175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114001 n) (A286389 n)

end

end A284772.P3216658760867862175

namespace A284772

/-- `and(A114001(n), A286389(n))` -/
def P3216658760867862175.Spec : Prop :=
  ∀ n, P3216658760867862175.a n = A284772 (n + 1)

end A284772

/-!
# A284773: Positions of 0 in A284772; complement of A284774.

The programs for A284773, the canonical program `A284773.P8746156910445809745` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284773 has offset 1).

The definition of A284773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284773.P8746156910445809745

`∑[char[A283965(n+1)]+1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284773

/-- `∑[char[A283965(n+1)]+1]` -/
def P8746156910445809745.Spec : Prop :=
  ∀ n, (P8746156910445809745.a n : ℤ) = A284773 (n + 1)

theorem P8746156910445809745.correct : P8746156910445809745.Spec := by
  intro n
  simp only [A284773, Nat.add_sub_cancel]

end A284773

/-! ## A284773.P16160603244958120748

`A008620(A284658(n+1))+n`
-/

namespace A284773.P16160603244958120748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A284658 (n + 1)).toNat + (n : ℤ)

end

end A284773.P16160603244958120748

namespace A284773

/-- `A008620(A284658(n+1))+n` -/
def P16160603244958120748.Spec : Prop :=
  ∀ n, P16160603244958120748.a n = A284773 (n + 1)

end A284773

/-! ## A284773.P659194052733031560

`A032742(A284852(2*n+1)+1)`
-/

namespace A284773.P659194052733031560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A284852 (2 * n + 1) + 1).toNat

end

end A284773.P659194052733031560

namespace A284773

/-- `A032742(A284852(2*n+1)+1)` -/
def P659194052733031560.Spec : Prop :=
  ∀ n, P659194052733031560.a n = A284773 (n + 1)

end A284773

/-! ## A284773.P2221116919336479467

`A110514(A284852(2*n+1)-1)`
-/

namespace A284773.P2221116919336479467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A284852 (2 * n + 1) - 1).toNat

end

end A284773.P2221116919336479467

namespace A284773

/-- `A110514(A284852(2*n+1)-1)` -/
def P2221116919336479467.Spec : Prop :=
  ∀ n, P2221116919336479467.a n = A284773 (n + 1)

end A284773

/-! ## A284773.P8066827607553435613

`A004526(A284852(2*(n+1)))`
-/

namespace A284773.P8066827607553435613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A284852 (2 * (n + 1))).toNat

end

end A284773.P8066827607553435613

namespace A284773

/-- `A004526(A284852(2*(n+1)))` -/
def P8066827607553435613.Spec : Prop :=
  ∀ n, P8066827607553435613.a n = A284773 (n + 1)

end A284773

/-! ## A284773.P14053191607158940859

`A057979(A284852(2*n+1)+2)`
-/

namespace A284773.P14053191607158940859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A284852 (2 * n + 1) + 2).toNat

end

end A284773.P14053191607158940859

namespace A284773

/-- `A057979(A284852(2*n+1)+2)` -/
def P14053191607158940859.Spec : Prop :=
  ∀ n, P14053191607158940859.a n = A284773 (n + 1)

end A284773

/-!
# A284774: Positions of 1 in A284772; complement of A284773.

The programs for A284774, the canonical program `A284774.P7490368662566357042` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284774 has offset 1).

The definition of A284774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284774.P7490368662566357042

`A283965(n+1)+1+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284774

/-- `A283965(n+1)+1+n` -/
def P7490368662566357042.Spec : Prop :=
  ∀ n, P7490368662566357042.a n = A284774 (n + 1)

theorem P7490368662566357042.correct : P7490368662566357042.Spec := by
  intro n
  simp only [A284774, Nat.add_sub_cancel]

end A284774

/-! ## A284774.P6026462662511078423

`A286389(n)+2*(n+1)`
-/

namespace A284774.P6026462662511078423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 n + (2 * (n + 1) : ℤ)

end

end A284774.P6026462662511078423

namespace A284774

/-- `A286389(n)+2*(n+1)` -/
def P6026462662511078423.Spec : Prop :=
  ∀ n, P6026462662511078423.a n = A284774 (n + 1)

end A284774

/-! ## A284774.P16506128776342003897

`∑[char[A026367(n+1)]+2]`
-/

namespace A284774.P16506128776342003897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284774.P16506128776342003897

namespace A284774

/-- `∑[char[A026367(n+1)]+2]` -/
def P16506128776342003897.Spec : Prop :=
  ∀ n, (P16506128776342003897.a n : ℤ) = A284774 (n + 1)

end A284774

/-! ## A284774.P6337485175195376294

`∑[A285431(n+1)+2]-A285431(n+1)`
-/

namespace A284774.P6337485175195376294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285431 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A285431 (n + 1)

end

end A284774.P6337485175195376294

namespace A284774

/-- `∑[A285431(n+1)+2]-A285431(n+1)` -/
def P6337485175195376294.Spec : Prop :=
  ∀ n, P6337485175195376294.a n = A284774 (n + 1)

end A284774

/-! ## A284774.P7722865566776960247

`A284773(A283965(n+1))+1`
-/

namespace A284774.P7722865566776960247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (A283965 (n + 1)).toNat + 1

end

end A284774.P7722865566776960247

namespace A284774

/-- `A284773(A283965(n+1))+1` -/
def P7722865566776960247.Spec : Prop :=
  ∀ n, P7722865566776960247.a n = A284774 (n + 1)

end A284774

/-! ## A284774.P10554692143638205055

`A026359(2*(n+1))`
-/

namespace A284774.P10554692143638205055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026359 (2 * (n + 1))

end

end A284774.P10554692143638205055

namespace A284774

/-- `A026359(2*(n+1))` -/
def P10554692143638205055.Spec : Prop :=
  ∀ n, P10554692143638205055.a n = A284774 (n + 1)

end A284774

/-! ## A284774.P5679706818109154042

`A026367(2*(n+1))`
-/

namespace A284774.P5679706818109154042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (2 * (n + 1))

end

end A284774.P5679706818109154042

namespace A284774

/-- `A026367(2*(n+1))` -/
def P5679706818109154042.Spec : Prop :=
  ∀ n, P5679706818109154042.a n = A284774 (n + 1)

end A284774

/-! ## A284774.P18403940725365867935

`A026367(Δ[n²])+1`
-/

namespace A284774.P18403940725365867935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A284774.P18403940725365867935

namespace A284774

/-- `A026367(Δ[n²])+1` -/
def P18403940725365867935.Spec : Prop :=
  ∀ n, P18403940725365867935.a n = A284774 (n + 1)

end A284774

/-! ## A284774.P14048725464712602503

`A284853(2*(n+1))/2`
-/

namespace A284774.P14048725464712602503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284853 (2 * (n + 1)) : ℚ) / 2

end

end A284774.P14048725464712602503

namespace A284774

/-- `A284853(2*(n+1))/2` -/
def P14048725464712602503.Spec : Prop :=
  ∀ n, P14048725464712602503.a n = (A284774 (n + 1) : ℚ)

end A284774

/-! ## A284774.P11226974875028105051

`A283964(2*n+1)-2*n`
-/

namespace A284774.P11226974875028105051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283964 (2 * n + 1) - (2 * n : ℤ)

end

end A284774.P11226974875028105051

namespace A284774

/-- `A283964(2*n+1)-2*n` -/
def P11226974875028105051.Spec : Prop :=
  ∀ n, P11226974875028105051.a n = A284774 (n + 1)

end A284774

/-! ## A284774.P10085014375130602783

`A026360(2*(n+1))/2-n`
-/

namespace A284774.P10085014375130602783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026360 (2 * (n + 1)) : ℚ) / 2 - (n : ℚ)

end

end A284774.P10085014375130602783

namespace A284774

/-- `A026360(2*(n+1))/2-n` -/
def P10085014375130602783.Spec : Prop :=
  ∀ n, P10085014375130602783.a n = (A284774 (n + 1) : ℚ)

end A284774

/-! ## A284774.P1924842118303985185

`n+1+A284507(2*(n+1))/2`
-/

namespace A284774.P1924842118303985185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (A284507 (2 * (n + 1)) : ℚ) / 2

end

end A284774.P1924842118303985185

namespace A284774

/-- `n+1+A284507(2*(n+1))/2` -/
def P1924842118303985185.Spec : Prop :=
  ∀ n, P1924842118303985185.a n = (A284774 (n + 1) : ℚ)

end A284774

/-! ## A284774.P3177549635745757492

`record[A026367(A064745(n+2))]`
-/

namespace A284774.P3177549635745757492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (A064745 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284774.P3177549635745757492

namespace A284774

/-- `record[A026367(A064745(n+2))]` -/
def P3177549635745757492.Spec : Prop :=
  ∀ n, P3177549635745757492.a n = A284774 (n + 1)

end A284774

/-! ## A284774.P18336391875120136537

`record[A038608(n)]+A286389(n)+2`
-/

namespace A284774.P18336391875120136537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A286389 n + 2)

end

end A284774.P18336391875120136537

namespace A284774

/-- `record[A038608(n)]+A286389(n)+2` -/
def P18336391875120136537.Spec : Prop :=
  ∀ n, P18336391875120136537.a n = A284774 (n + 1)

end A284774

/-! ## A284774.P6808428135629431393

`(A026368(2*(n+1))+A001478(2*(n+1)))/2`
-/

namespace A284774.P6808428135629431393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026368 (2 * (n + 1)) + A001478 (2 * (n + 1)) : ℚ) / 2

end

end A284774.P6808428135629431393

namespace A284774

/-- `(A026368(2*(n+1))+A001478(2*(n+1)))/2` -/
def P6808428135629431393.Spec : Prop :=
  ∀ n, P6808428135629431393.a n = (A284774 (n + 1) : ℚ)

end A284774

/-! ## A284774.P5077804636712370005

`A026359(n+3+n)-1`
-/

namespace A284774.P5077804636712370005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026359 (n + 3 + n) - 1

end

end A284774.P5077804636712370005

namespace A284774

/-- `A026359(n+3+n)-1` -/
def P5077804636712370005.Spec : Prop :=
  ∀ n, P5077804636712370005.a n = A284774 (n + 1)

end A284774

/-! ## A284774.P6919597120562580447

`filter[n+1, A284772(#)]`
-/

namespace A284774.P6919597120562580447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284772 (f1 j) = 1) n)

end

end A284774.P6919597120562580447

namespace A284774

/-- `filter[n+1, A284772(#)]` -/
def P6919597120562580447.Spec : Prop :=
  ∀ n, (P6919597120562580447.a n : ℤ) = A284774 (n + 1)

end A284774

/-!
# A284775: Fixed point of the morphism 0 -> 01, 1 -> 0011.

The programs for A284775, the canonical program `A284775.P6819391964900779243` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284775 has offset 1).

The definition of A284775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284775.P6819391964900779243

`char[A285307(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284775

/-- `char[A285307(n+1)]` -/
def P6819391964900779243.Spec : Prop :=
  ∀ n, (P6819391964900779243.a n : ℤ) = A284775 (n + 1)

theorem P6819391964900779243.correct : P6819391964900779243.Spec := by
  intro n
  simp only [A284775, Nat.add_sub_cancel]

end A284775

/-! ## A284775.P4091268383258919167

`log2(gcd(2, A284796(n+1)))`
-/

namespace A284775.P4091268383258919167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A284796 (n + 1)) : ℝ)

end

end A284775.P4091268383258919167

namespace A284775

/-- `log2(gcd(2, A284796(n+1)))` -/
def P4091268383258919167.Spec : Prop :=
  ∀ n, P4091268383258919167.a n = (A284775 (n + 1) : ℝ)

end A284775

/-! ## A284775.P14850409087646894586

`char[A284777(n+1)-1]`
-/

namespace A284775.P14850409087646894586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284775.P14850409087646894586

namespace A284775

/-- `char[A284777(n+1)-1]` -/
def P14850409087646894586.Spec : Prop :=
  ∀ n, (P14850409087646894586.a n : ℤ) = A284775 (n + 1)

end A284775

/-! ## A284775.P10149325311880368544

`A284793(n)+a(n-1)` with `a(0)=0`
-/

namespace A284775.P10149325311880368544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A284793 n + a (n - 1)

end

end A284775.P10149325311880368544

namespace A284775

/-- `A284793(n)+a(n-1)` -/
def P10149325311880368544.Spec : Prop :=
  ∀ n, P10149325311880368544.a n = A284775 (n + 1)

end A284775

/-! ## A284775.P18283232105374512654

`char[A189666(n+1)-(n+1)]`
-/

namespace A284775.P18283232105374512654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284775.P18283232105374512654

namespace A284775

/-- `char[A189666(n+1)-(n+1)]` -/
def P18283232105374512654.Spec : Prop :=
  ∀ n, (P18283232105374512654.a n : ℤ) = A284775 (n + 1)

end A284775

/-! ## A284775.P6858203690307376980

`char[A284819(n+1)-(n+2)]`
-/

namespace A284775.P6858203690307376980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284819 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284775.P6858203690307376980

namespace A284775

/-- `char[A284819(n+1)-(n+2)]` -/
def P6858203690307376980.Spec : Prop :=
  ∀ n, (P6858203690307376980.a n : ℤ) = A284775 (n + 1)

end A284775

/-! ## A284775.P6448222160613924448

`char[n*A285305(n+1)+1]`
-/

namespace A284775.P6448222160613924448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285305 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284775.P6448222160613924448

namespace A284775

/-- `char[n*A285305(n+1)+1]` -/
def P6448222160613924448.Spec : Prop :=
  ∀ n, (P6448222160613924448.a n : ℤ) = A284775 (n + 1)

end A284775

/-! ## A284775.P12375731803545850008

`char[A014681(A285306(n+1))]`
-/

namespace A284775.P12375731803545850008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285306 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284775.P12375731803545850008

namespace A284775

/-- `char[A014681(A285306(n+1))]` -/
def P12375731803545850008.Spec : Prop :=
  ∀ n, (P12375731803545850008.a n : ℤ) = A284775 (n + 1)

end A284775

/-! ## A284775.P8645433344841049155

`A189665(n+1)-A284818(n+1)`
-/

namespace A284775.P8645433344841049155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 1) - A284818 (n + 1)

end

end A284775.P8645433344841049155

namespace A284775

/-- `A189665(n+1)-A284818(n+1)` -/
def P8645433344841049155.Spec : Prop :=
  ∀ n, P8645433344841049155.a n = A284775 (n + 1)

end A284775

/-! ## A284775.P14734680458992038890

`A285305(n+1)-A284793(n+1)`
-/

namespace A284775.P14734680458992038890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (n + 1) - A284793 (n + 1)

end

end A284775.P14734680458992038890

namespace A284775

/-- `A285305(n+1)-A284793(n+1)` -/
def P14734680458992038890.Spec : Prop :=
  ∀ n, P14734680458992038890.a n = A284775 (n + 1)

end A284775

/-! ## A284775.P17147961438978181497

`char[xor(A088837(n+1), A285306(n+1))]`
-/

namespace A284775.P17147961438978181497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A285306 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284775.P17147961438978181497

namespace A284775

/-- `char[xor(A088837(n+1), A285306(n+1))]` -/
def P17147961438978181497.Spec : Prop :=
  ∀ n, (P17147961438978181497.a n : ℤ) = A284775 (n + 1)

end A284775

/-! ## A284775.P6003790722611111070

`A284794(n+1)-(A284796(n+1)+1)`
-/

namespace A284775.P6003790722611111070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284794 (n + 1) - (A284796 (n + 1) + 1)

end

end A284775.P6003790722611111070

namespace A284775

/-- `A284794(n+1)-(A284796(n+1)+1)` -/
def P6003790722611111070.Spec : Prop :=
  ∀ n, P6003790722611111070.a n = A284775 (n + 1)

end A284775

/-! ## A284775.P1473603757334491912

`A284794(n+1)/2-A284818(n+1)`
-/

namespace A284775.P1473603757334491912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284794 (n + 1) : ℚ) / 2 - (A284818 (n + 1) : ℚ)

end

end A284775.P1473603757334491912

namespace A284775

/-- `A284794(n+1)/2-A284818(n+1)` -/
def P1473603757334491912.Spec : Prop :=
  ∀ n, P1473603757334491912.a n = (A284775 (n + 1) : ℚ)

end A284775

/-! ## A284775.P7603682225572500526

`A189664(A284794(n+1)-A284796(n+1))`
-/

namespace A284775.P7603682225572500526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (A284794 (n + 1) - A284796 (n + 1)).toNat

end

end A284775.P7603682225572500526

namespace A284775

/-- `A189664(A284794(n+1)-A284796(n+1))` -/
def P7603682225572500526.Spec : Prop :=
  ∀ n, P7603682225572500526.a n = A284775 (n + 1)

end A284775

/-! ## A284775.P16933990306292266281

`A189667(A284794(n+1)-A284796(n+1))`
-/

namespace A284775.P16933990306292266281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189667 (A284794 (n + 1) - A284796 (n + 1)).toNat

end

end A284775.P16933990306292266281

namespace A284775

/-- `A189667(A284794(n+1)-A284796(n+1))` -/
def P16933990306292266281.Spec : Prop :=
  ∀ n, P16933990306292266281.a n = A284775 (n + 1)

end A284775

/-! ## A284775.P6233873436226294486

`A284878(A284794(n+1)-A284796(n+1))`
-/

namespace A284775.P6233873436226294486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (A284794 (n + 1) - A284796 (n + 1)).toNat

end

end A284775.P6233873436226294486

namespace A284775

/-- `A284878(A284794(n+1)-A284796(n+1))` -/
def P6233873436226294486.Spec : Prop :=
  ∀ n, P6233873436226294486.a n = A284775 (n + 1)

end A284775

/-! ## A284775.P13405944920349920405

`log2(Δ[A284818(n+1)])`
-/

namespace A284775.P13405944920349920405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A284775.P13405944920349920405

namespace A284775

/-- `log2(Δ[A284818(n+1)])` -/
def P13405944920349920405.Spec : Prop :=
  ∀ n, P13405944920349920405.a n = (A284775 (n + 1) : ℝ)

end A284775

/-! ## A284775.P6111766211326003628

`Δ[comp[A189666(n+1)]]-1`
-/

namespace A284775.P6111766211326003628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A284775.P6111766211326003628

namespace A284775

/-- `Δ[comp[A189666(n+1)]]-1` -/
def P6111766211326003628.Spec : Prop :=
  ∀ n, P6111766211326003628.a n = A284775 (n + 1)

end A284775

/-! ## A284775.P10442421911251034924

`A001221(Δ[A284818(n+1)])`
-/

namespace A284775.P10442421911251034924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A284775.P10442421911251034924

namespace A284775

/-- `A001221(Δ[A284818(n+1)])` -/
def P10442421911251034924.Spec : Prop :=
  ∀ n, P10442421911251034924.a n = A284775 (n + 1)

end A284775

/-!
# A284776: Positions of 0 in A284775; complement of A284777.

The programs for A284776, the canonical program `A284776.P12423276562320356730` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284776 has offset 1).

The definition of A284776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284776.P16072459787131770845

`comp[A285307(n+1)]+1`
-/

namespace A284776.P16072459787131770845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284776.P16072459787131770845

namespace A284776

/-- `comp[A285307(n+1)]+1` -/
def P16072459787131770845.Spec : Prop :=
  ∀ n, (P16072459787131770845.a n : ℤ) = A284776 (n + 1)

end A284776

/-! ## A284776.P1546811735649425033

`Δ[n²]-A284817(n+1)`
-/

namespace A284776.P1546811735649425033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A284817 (n + 1)

end

end A284776.P1546811735649425033

namespace A284776

/-- `Δ[n²]-A284817(n+1)` -/
def P1546811735649425033.Spec : Prop :=
  ∀ n, P1546811735649425033.a n = A284776 (n + 1)

end A284776

/-! ## A284776.P4749967447510723020

`comp[A284777(n+1)-1]+1`
-/

namespace A284776.P4749967447510723020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284776.P4749967447510723020

namespace A284776

/-- `comp[A284777(n+1)-1]+1` -/
def P4749967447510723020.Spec : Prop :=
  ∀ n, (P4749967447510723020.a n : ℤ) = A284776 (n + 1)

end A284776

/-! ## A284776.P1706795842308943118

`comp[char[A189666(n+1)]+2*n]`
-/

namespace A284776.P1706795842308943118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A284776.P1706795842308943118

namespace A284776

/-- `comp[char[A189666(n+1)]+2*n]` -/
def P1706795842308943118.Spec : Prop :=
  ∀ n, (P1706795842308943118.a n : ℤ) = A284776 (n + 1)

end A284776

/-! ## A284776.P12625188356120516945

`char[A284818(n+1)-1]+n+n`
-/

namespace A284776.P12625188356120516945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n + n

end

end A284776.P12625188356120516945

namespace A284776

/-- `char[A284818(n+1)-1]+n+n` -/
def P12625188356120516945.Spec : Prop :=
  ∀ n, (P12625188356120516945.a n : ℤ) = A284776 (n + 1)

end A284776

/-! ## A284776.P7018005061574332183

`A005843(n)+1-A284817(n+1)`
-/

namespace A284776.P7018005061574332183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A284817 (n + 1))

end

end A284776.P7018005061574332183

namespace A284776

/-- `A005843(n)+1-A284817(n+1)` -/
def P7018005061574332183.Spec : Prop :=
  ∀ n, P7018005061574332183.a n = A284776 (n + 1)

end A284776

/-! ## A284776.P12423276562320356730

`2*n+1-A189664(A028310(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284776

/-- `2*n+1-A189664(A028310(n))` -/
def P12423276562320356730.Spec : Prop :=
  ∀ n, P12423276562320356730.a n = A284776 (n + 1)

theorem P12423276562320356730.correct : P12423276562320356730.Spec := by
  intro n
  simp only [A284776, Nat.add_sub_cancel]

end A284776

/-! ## A284776.P16411021029082154473

`∪[A284794(n+1)+1, A284796(n+1)]`
-/

namespace A284776.P16411021029082154473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284794 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A284776.P16411021029082154473

namespace A284776

/-- `∪[A284794(n+1)+1, A284796(n+1)]` -/
def P16411021029082154473.Spec : Prop :=
  ∀ n, (P16411021029082154473.a n : ℤ) = A284776 (n + 1)

end A284776

/-! ## A284776.P18128104226727544058

`A284793(a(n-1))+2*n` with `a(0)=1`
-/

namespace A284776.P18128104226727544058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284793 (a (n - 1)).toNat + (2 * n : ℤ)

end

end A284776.P18128104226727544058

namespace A284776

/-- `A284793(a(n-1))+2*n` -/
def P18128104226727544058.Spec : Prop :=
  ∀ n, P18128104226727544058.a n = A284776 (n + 1)

end A284776

/-! ## A284776.P11523274072868537160

`A285305(a(n-1))+2*n` with `a(0)=1`
-/

namespace A284776.P11523274072868537160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285305 (a (n - 1)).toNat + (2 * n : ℤ)

end

end A284776.P11523274072868537160

namespace A284776

/-- `A285305(a(n-1))+2*n` -/
def P11523274072868537160.Spec : Prop :=
  ∀ n, P11523274072868537160.a n = A284776 (n + 1)

end A284776

/-! ## A284776.P914198806674988508

`A284818(Δ[n²])-n`
-/

namespace A284776.P914198806674988508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A284776.P914198806674988508

namespace A284776

/-- `A284818(Δ[n²])-n` -/
def P914198806674988508.Spec : Prop :=
  ∀ n, P914198806674988508.a n = A284776 (n + 1)

end A284776

/-! ## A284776.P13989643987632715477

`lt[A284775(n+1), 1]+1`
-/

namespace A284776.P13989643987632715477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284776.P13989643987632715477

namespace A284776

/-- `lt[A284775(n+1), 1]+1` -/
def P13989643987632715477.Spec : Prop :=
  ∀ n, (P13989643987632715477.a n : ℤ) = A284776 (n + 1)

end A284776

/-! ## A284776.P11470656538692743140

`ceil(A284796(2*n+1)/3)`
-/

namespace A284776.P11470656538692743140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284796 (2 * n + 1) : ℚ) / 3⌉

end

end A284776.P11470656538692743140

namespace A284776

/-- `ceil(A284796(2*n+1)/3)` -/
def P11470656538692743140.Spec : Prop :=
  ∀ n, P11470656538692743140.a n = A284776 (n + 1)

end A284776

/-! ## A284776.P2191018001697949825

`Δ[n²]-A284775(2*n+1)`
-/

namespace A284776.P2191018001697949825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A284775 (2 * n + 1)

end

end A284776.P2191018001697949825

namespace A284776

/-- `Δ[n²]-A284775(2*n+1)` -/
def P2191018001697949825.Spec : Prop :=
  ∀ n, P2191018001697949825.a n = A284776 (n + 1)

end A284776

/-! ## A284776.P8165339619015874706

`A284796(2*n+1)-A005843(2*n)`
-/

namespace A284776.P8165339619015874706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284796 (2 * n + 1) - A005843 (2 * n)

end

end A284776.P8165339619015874706

namespace A284776

/-- `A284796(2*n+1)-A005843(2*n)` -/
def P8165339619015874706.Spec : Prop :=
  ∀ n, P8165339619015874706.a n = A284776 (n + 1)

end A284776

/-! ## A284776.P4191605712838269074

`A005843(n+1)-(A284775(2*n+1)+1)`
-/

namespace A284776.P4191605712838269074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - (A284775 (2 * n + 1) + 1)

end

end A284776.P4191605712838269074

namespace A284776

/-- `A005843(n+1)-(A284775(2*n+1)+1)` -/
def P4191605712838269074.Spec : Prop :=
  ∀ n, P4191605712838269074.a n = A284776 (n + 1)

end A284776

/-! ## A284776.P8738300304149971757

`A008619(2*n)-A284775(2*n+1)+n`
-/

namespace A284776.P8738300304149971757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A284775 (2 * n + 1) + (n : ℤ)

end

end A284776.P8738300304149971757

namespace A284776

/-- `A008619(2*n)-A284775(2*n+1)+n` -/
def P8738300304149971757.Spec : Prop :=
  ∀ n, P8738300304149971757.a n = A284776 (n + 1)

end A284776

/-! ## A284776.P13883508603110132326

`A284796(2*n+1)+2-A004277(2*n+1)`
-/

namespace A284776.P13883508603110132326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284796 (2 * n + 1) + (2 - A004277 (2 * n + 1))

end

end A284776.P13883508603110132326

namespace A284776

/-- `A284796(2*n+1)+2-A004277(2*n+1)` -/
def P13883508603110132326.Spec : Prop :=
  ∀ n, P13883508603110132326.a n = A284776 (n + 1)

end A284776

/-!
# A284777: Positions of 1 in A284775; complement of A284776.

The programs for A284777, the canonical program `A284777.P11967598167269202955` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284777 has offset 1).

The definition of A284777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284777.P1819887923371657426

`A285307(n+1)+1`
-/

namespace A284777.P1819887923371657426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1) + 1

end

end A284777.P1819887923371657426

namespace A284777

/-- `A285307(n+1)+1` -/
def P1819887923371657426.Spec : Prop :=
  ∀ n, P1819887923371657426.a n = A284777 (n + 1)

end A284777

/-! ## A284777.P11967598167269202955

`A189666(n+1)-n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284777

/-- `A189666(n+1)-n` -/
def P11967598167269202955.Spec : Prop :=
  ∀ n, P11967598167269202955.a n = A284777 (n + 1)

theorem P11967598167269202955.correct : P11967598167269202955.Spec := by
  intro n
  simp only [A284777, Nat.add_sub_cancel]

end A284777

/-! ## A284777.P8346978068243173755

`xor(1, A285306(n+1)+1)`
-/

namespace A284777.P8346978068243173755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A285306 (n + 1) + 1)

end

end A284777.P8346978068243173755

namespace A284777

/-- `xor(1, A285306(n+1)+1)` -/
def P8346978068243173755.Spec : Prop :=
  ∀ n, P8346978068243173755.a n = A284777 (n + 1)

end A284777

/-! ## A284777.P4287396303149531990

`A284819(n+1)-(n+1)`
-/

namespace A284777.P4287396303149531990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284819 (n + 1) - (n + 1 : ℤ)

end

end A284777.P4287396303149531990

namespace A284777

/-- `A284819(n+1)-(n+1)` -/
def P4287396303149531990.Spec : Prop :=
  ∀ n, P4287396303149531990.a n = A284777 (n + 1)

end A284777

/-! ## A284777.P1675298111574217743

`A189664(n+1)+2*(n+1)`
-/

namespace A284777.P1675298111574217743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (n + 1) + (2 * (n + 1) : ℤ)

end

end A284777.P1675298111574217743

namespace A284777

/-- `A189664(n+1)+2*(n+1)` -/
def P1675298111574217743.Spec : Prop :=
  ∀ n, P1675298111574217743.a n = A284777 (n + 1)

end A284777

/-! ## A284777.P9921094369296613180

`Δ[n²]+C(2, A287455(n+1))`
-/

namespace A284777.P9921094369296613180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose 2 (A287455 (n + 1)).toNat : ℤ)

end

end A284777.P9921094369296613180

namespace A284777

/-- `Δ[n²]+C(2, A287455(n+1))` -/
def P9921094369296613180.Spec : Prop :=
  ∀ n, P9921094369296613180.a n = A284777 (n + 1)

end A284777

/-! ## A284777.P15062038018369587249

`A004767(n)+1-A285306(n+1)`
-/

namespace A284777.P15062038018369587249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + (1 - A285306 (n + 1))

end

end A284777.P15062038018369587249

namespace A284777

/-- `A004767(n)+1-A285306(n+1)` -/
def P15062038018369587249.Spec : Prop :=
  ∀ n, P15062038018369587249.a n = A284777 (n + 1)

end A284777

/-! ## A284777.P14479239726885296154

`A016897(n)-(A285306(n+1)+n)`
-/

namespace A284777.P14479239726885296154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - (A285306 (n + 1) + (n : ℤ))

end

end A284777.P14479239726885296154

namespace A284777

/-- `A016897(n)-(A285306(n+1)+n)` -/
def P14479239726885296154.Spec : Prop :=
  ∀ n, P14479239726885296154.a n = A284777 (n + 1)

end A284777

/-! ## A284777.P18118766955973255884

`A001478(n+1)+A189666(n+1)+1`
-/

namespace A284777.P18118766955973255884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A189666 (n + 1) + 1)

end

end A284777.P18118766955973255884

namespace A284777

/-- `A001478(n+1)+A189666(n+1)+1` -/
def P18118766955973255884.Spec : Prop :=
  ∀ n, P18118766955973255884.a n = A284777 (n + 1)

end A284777

/-! ## A284777.P8373781134190440481

`∪[A284794(n+1), A284796(n+1)+1]`
-/

namespace A284777.P8373781134190440481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284796 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A284777.P8373781134190440481

namespace A284777

/-- `∪[A284794(n+1), A284796(n+1)+1]` -/
def P8373781134190440481.Spec : Prop :=
  ∀ n, (P8373781134190440481.a n : ℤ) = A284777 (n + 1)

end A284777

/-! ## A284777.P18126333033727775020

`A000027(C(2, A287455(n+1))+1+n)+n`
-/

namespace A284777.P18126333033727775020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose 2 (A287455 (n + 1)).toNat + 1 + n) + (n : ℤ)

end

end A284777.P18126333033727775020

namespace A284777

/-- `A000027(C(2, A287455(n+1))+1+n)+n` -/
def P18126333033727775020.Spec : Prop :=
  ∀ n, P18126333033727775020.a n = A284777 (n + 1)

end A284777

/-! ## A284777.P2957116488474719438

`xor(1, A284776(n+2))`
-/

namespace A284777.P2957116488474719438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A284776 (n + 2))

end

end A284777.P2957116488474719438

namespace A284777

/-- `xor(1, A284776(n+2))` -/
def P2957116488474719438.Spec : Prop :=
  ∀ n, P2957116488474719438.a n = A284777 (n + 1)

end A284777

/-! ## A284777.P7826756679853140548

`A284817(n+2)+2*(n+1)`
-/

namespace A284777.P7826756679853140548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (n + 2) + (2 * (n + 1) : ℤ)

end

end A284777.P7826756679853140548

namespace A284777

/-- `A284817(n+2)+2*(n+1)` -/
def P7826756679853140548.Spec : Prop :=
  ∀ n, P7826756679853140548.a n = A284777 (n + 1)

end A284777

/-! ## A284777.P396618869802871243

`filter[n+1, A284775(#)]`
-/

namespace A284777.P396618869802871243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284775 (f1 j) = 1) n)

end

end A284777.P396618869802871243

namespace A284777

/-- `filter[n+1, A284775(#)]` -/
def P396618869802871243.Spec : Prop :=
  ∀ n, (P396618869802871243.a n : ℤ) = A284777 (n + 1)

end A284777

/-! ## A284777.P12052284046777599675

`eq[1, A284775(n+1)]+1`
-/

namespace A284777.P12052284046777599675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284777.P12052284046777599675

namespace A284777

/-- `eq[1, A284775(n+1)]+1` -/
def P12052284046777599675.Spec : Prop :=
  ∀ n, (P12052284046777599675.a n : ℤ) = A284777 (n + 1)

end A284777

/-! ## A284777.P7356961406674915779

`eq[1, A285305(n+1)]+2`
-/

namespace A284777.P7356961406674915779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284777.P7356961406674915779

namespace A284777

/-- `eq[1, A285305(n+1)]+2` -/
def P7356961406674915779.Spec : Prop :=
  ∀ n, (P7356961406674915779.a n : ℤ) = A284777 (n + 1)

end A284777

/-! ## A284777.P4735621586183320912

`lt[Δ[A284793(n+1)], 1]+2`
-/

namespace A284777.P4735621586183320912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A284777.P4735621586183320912

namespace A284777

/-- `lt[Δ[A284793(n+1)], 1]+2` -/
def P4735621586183320912.Spec : Prop :=
  ∀ n, (P4735621586183320912.a n : ℤ) = A284777 (n + 1)

end A284777

/-!
# A284778: Number of self-avoiding planar walks of length n+1 starting at (0,0), ending at (n,0), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1) with the restriction that (0,1) is never used below the diagonal and (1,0) is never used above the diagonal.

The programs for A284778, the canonical program `A284778.P4992790969954017834` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284778 has offset 0).

The definition of A284778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284778.P4992790969954017834

`Δ[A187306(n)+n%2]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A284778

/-- `Δ[A187306(n)+n%2]` -/
def P4992790969954017834.Spec : Prop :=
  ∀ n, P4992790969954017834.a n = A284778 n

theorem P4992790969954017834.correct : P4992790969954017834.Spec := by
  intro n
  simp only [A284778]

end A284778

/-! ## A284778.P12288697812719829368

`A002026(n)-a(n-1)` with `a(0)=0`
-/

namespace A284778.P12288697812719829368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002026 n - a (n - 1)

end

end A284778.P12288697812719829368

namespace A284778

/-- `A002026(n)-a(n-1)` -/
def P12288697812719829368.Spec : Prop :=
  ∀ n, P12288697812719829368.a n = A284778 n

end A284778

/-! ## A284778.P10441417160631042313

`A105695(n+2)-a(n-1)` with `a(0)=0`
-/

namespace A284778.P10441417160631042313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A105695 (n + 2) - a (n - 1)

end

end A284778.P10441417160631042313

namespace A284778

/-- `A105695(n+2)-a(n-1)` -/
def P10441417160631042313.Spec : Prop :=
  ∀ n, P10441417160631042313.a n = A284778 n

end A284778

/-! ## A284778.P7400529522265367824

`Δ[A005043(n+1)+char[2*n]]`
-/

namespace A284778.P7400529522265367824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284778.P7400529522265367824

namespace A284778

/-- `Δ[A005043(n+1)+char[2*n]]` -/
def P7400529522265367824.Spec : Prop :=
  ∀ n, P7400529522265367824.a n = A284778 n

end A284778

/-! ## A284778.P5654453368298706361

`Δ[A001006(n)+1-a(n-1)]` with `a(0)=1`
-/

namespace A284778.P5654453368298706361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001006 n + 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284778.P5654453368298706361

namespace A284778

/-- `Δ[A001006(n)+1-a(n-1)]` -/
def P5654453368298706361.Spec : Prop :=
  ∀ n, P5654453368298706361.a n = A284778 n

end A284778

/-! ## A284778.P17303158054256858488

`Δ[abs(A166587(n+1))]-a(n-1)` with `a(0)=0`
-/

namespace A284778.P17303158054256858488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A284778.P17303158054256858488

namespace A284778

/-- `Δ[abs(A166587(n+1))]-a(n-1)` -/
def P17303158054256858488.Spec : Prop :=
  ∀ n, P17303158054256858488.a n = A284778 n

end A284778

/-! ## A284778.P5031289509322025101

`A342912(n)-A187306(n)`
-/

namespace A284778.P5031289509322025101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342912 n - A187306 n

end

end A284778.P5031289509322025101

namespace A284778

/-- `A342912(n)-A187306(n)` -/
def P5031289509322025101.Spec : Prop :=
  ∀ n, P5031289509322025101.a n = A284778 n

end A284778

/-! ## A284778.P14689342339572316814

`A005043(n+2)-A187306(n)`
-/

namespace A284778.P14689342339572316814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 2) - A187306 n

end

end A284778.P14689342339572316814

namespace A284778

/-- `A005043(n+2)-A187306(n)` -/
def P14689342339572316814.Spec : Prop :=
  ∀ n, P14689342339572316814.a n = A284778 n

end A284778

/-! ## A284778.P14074625541405535777

`Δ[A059841(n)+A005043(n+1)]`
-/

namespace A284778.P14074625541405535777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A005043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284778.P14074625541405535777

namespace A284778

/-- `Δ[A059841(n)+A005043(n+1)]` -/
def P14074625541405535777.Spec : Prop :=
  ∀ n, P14074625541405535777.a n = A284778 n

end A284778

/-! ## A284778.P8081307171850820334

`Δ[Δ[A082395(n+1)]-A000034(n)]`
-/

namespace A284778.P8081307171850820334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284778.P8081307171850820334

namespace A284778

/-- `Δ[Δ[A082395(n+1)]-A000034(n)]` -/
def P8081307171850820334.Spec : Prop :=
  ∀ n, P8081307171850820334.a n = A284778 n

end A284778

/-! ## A284778.P2017713246168250223

`Δ[Δ[A082395(n+1)]-A000035(n)]`
-/

namespace A284778.P2017713246168250223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284778.P2017713246168250223

namespace A284778

/-- `Δ[Δ[A082395(n+1)]-A000035(n)]` -/
def P2017713246168250223.Spec : Prop :=
  ∀ n, P2017713246168250223.a n = A284778 n

end A284778

/-! ## A284778.P14883179049838852054

`A001006(n+1)-(A001006(n)+a(n-1))` with `a(0)=0`
-/

namespace A284778.P14883179049838852054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001006 (n + 1) - (A001006 n + a (n - 1))

end

end A284778.P14883179049838852054

namespace A284778

/-- `A001006(n+1)-(A001006(n)+a(n-1))` -/
def P14883179049838852054.Spec : Prop :=
  ∀ n, P14883179049838852054.a n = A284778 n

end A284778

/-!
# A284785: a(n) = rad(A280864(n)).

The programs for A284785, there is no canonical definition to state claims against.
-/

/-! ## A284785.P15446080089026216615

`∏{p}[A280864(n+1), #]`
-/

namespace A284785.P15446080089026216615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A284785.P15446080089026216615

/-! ## A284785.P16143389957848446105

`∏{p}[A338359(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A284785.P16143389957848446105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A338359 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A284785.P16143389957848446105

/-! ## A284785.P14950117428429609581

`A007947(A280864(n+1))`
-/

namespace A284785.P14950117428429609581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A280864 (n + 1)).toNat

end

end A284785.P14950117428429609581

/-! ## A284785.P18093906754584508505

`A071773(A280864(n+1)²)`
-/

namespace A284785.P18093906754584508505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (A280864 (n + 1) ^ 2).toNat

end

end A284785.P18093906754584508505

/-! ## A284785.P1379160233930153436

`A302138(A280864(n+1)²)`
-/

namespace A284785.P1379160233930153436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302138 (A280864 (n + 1) ^ 2).toNat

end

end A284785.P1379160233930153436

/-! ## A284785.P16443771863439952651

`A280738(n+1)*A280738(n+2)`
-/

namespace A284785.P16443771863439952651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (n + 1) * A280738 (n + 2)

end

end A284785.P16443771863439952651

/-! ## A284785.P10047763265657540563

`gcd(A186944(n+1), A280864(n+1))`
-/

namespace A284785.P10047763265657540563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186944 (n + 1)) (A280864 (n + 1))

end

end A284785.P10047763265657540563

/-! ## A284785.P2546295555789912940

`A015053(floor(sqrt(A280864(n+1)²+n)))`
-/

namespace A284785.P2546295555789912940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (Int.sqrt (A280864 (n + 1) ^ 2 + (n : ℤ))).toNat

end

end A284785.P2546295555789912940

/-! ## A284785.P12009031713858640576

`∏{p}[∑[A338359(n+1)]+1-A338359(n+1), #]`
-/

namespace A284785.P12009031713858640576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338359 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A338359 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A284785.P12009031713858640576

/-! ## A284785.P13202638919401263707

`A338449(A338347(A280864(n+1)²))`
-/

namespace A284785.P13202638919401263707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338449 (A338347 (A280864 (n + 1) ^ 2).toNat).toNat

end

end A284785.P13202638919401263707

/-!
# A284786: Pisano period of sequence A006054 modulo n.

The programs for A284786, there is no canonical definition to state claims against.
-/

/-! ## A284786.P13043669032975371156

`A220555(∑[n+3]+1)`
-/

namespace A284786.P13043669032975371156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220555 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284786.P13043669032975371156

/-!
# A284787: Even numbers representable in at least two ways as the sum of two odd composites.

The programs for A284787, there is no canonical definition to state claims against.
-/

/-! ## A284787.P4832349630349323934

`lt[A210110(n+1), A334768(n)]`
-/

namespace A284787.P4832349630349323934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284787.P4832349630349323934

/-!
# A284788: Even numbers that cannot be represented in at least two ways as the sum of two odd composites.

The programs for A284788, there is no canonical definition to state claims against.
-/

/-! ## A284788.P5118470350623223078

`A084564(A125007(n+2))`
-/

namespace A284788.P5118470350623223078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084564 (A125007 (n + 2)).toNat

end

end A284788.P5118470350623223078

/-! ## A284788.P7485499186341365254

`∑[A104274(A039730(n+2)+(n+1)%2)]`
-/

namespace A284788.P7485499186341365254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104274 (A039730 (n + 2) + (((n + 1) % 2 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284788.P7485499186341365254

/-! ## A284788.P12000157983933257864

`∑[A278541(A173758(A271315(n)))]`
-/

namespace A284788.P12000157983933257864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278541 (A173758 (A271315 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284788.P12000157983933257864

/-! ## A284788.P12170287186560808563

`∑[A028326(A001399(A319818(n+8)))]`
-/

namespace A284788.P12170287186560808563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (A001399 (A319818 (n + 8)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284788.P12170287186560808563

/-! ## A284788.P14235918739444806999

`lt[A000975(A355368(n+6)), A002129(n+1)]`
-/

namespace A284788.P14235918739444806999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A355368 (n + 6)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284788.P14235918739444806999

/-!
# A284789: {1001->0}-transform of the Thue-Morse word A010060.

The programs for A284789, the canonical program `A284789.P6683369917162461841` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284789 has offset 1).

The definition of A284789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284789.P6683369917162461841

`char[A284791(n+1)-1]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A284789

/-- `char[A284791(n+1)-1]` -/
def P6683369917162461841.Spec : Prop :=
  ∀ n, (P6683369917162461841.a n : ℤ) = A284789 (n + 1)

theorem P6683369917162461841.correct : P6683369917162461841.Spec := by
  intro n
  simp only [A284789, Nat.add_sub_cancel]

end A284789

/-! ## A284789.P17596708863287251635

`A038189(Δ[A286495(n+1)]+4)`
-/

namespace A284789.P17596708863287251635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (f1 (n + 1) - f1 n + 4).toNat

end

end A284789.P17596708863287251635

namespace A284789

/-- `A038189(Δ[A286495(n+1)]+4)` -/
def P17596708863287251635.Spec : Prop :=
  ∀ n, P17596708863287251635.a n = A284789 (n + 1)

end A284789

/-! ## A284789.P3869719996113824363

`A003849(Δ[3*A286495(n+1)])`
-/

namespace A284789.P3869719996113824363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A286495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (f1 (n + 1) - f1 n).toNat

end

end A284789.P3869719996113824363

namespace A284789

/-- `A003849(Δ[3*A286495(n+1)])` -/
def P3869719996113824363.Spec : Prop :=
  ∀ n, P3869719996113824363.a n = A284789 (n + 1)

end A284789

/-! ## A284789.P2096551679160236584

`A286493(Δ[A286495(n+1)]+6)`
-/

namespace A284789.P2096551679160236584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (f1 (n + 1) - f1 n + 6).toNat

end

end A284789.P2096551679160236584

namespace A284789

/-- `A286493(Δ[A286495(n+1)]+6)` -/
def P2096551679160236584.Spec : Prop :=
  ∀ n, P2096551679160236584.a n = A284789 (n + 1)

end A284789

/-! ## A284789.P2668631278271748657

`A286493(record[n*A286493(n+4)]+1)`
-/

namespace A284789.P2668631278271748657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A286493 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A284789.P2668631278271748657

namespace A284789

/-- `A286493(record[n*A286493(n+4)]+1)` -/
def P2668631278271748657.Spec : Prop :=
  ∀ n, P2668631278271748657.a n = A284789 (n + 1)

end A284789

/-!
# A284790: Positions of 0 in A284789; complement of A284791.

The programs for A284790, the canonical program `A284790.P18153554382833569304` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284790 has offset 1).

The definition of A284790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284790.P873929567851853045

`comp[A284791(n+1)-1]+1`
-/

namespace A284790.P873929567851853045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284791 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284790.P873929567851853045

namespace A284790

/-- `comp[A284791(n+1)-1]+1` -/
def P873929567851853045.Spec : Prop :=
  ∀ n, (P873929567851853045.a n : ℤ) = A284790 (n + 1)

end A284790

/-! ## A284790.P18153554382833569304

`A285972(n+1)+A285970(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284790

/-- `A285972(n+1)+A285970(n+1)` -/
def P18153554382833569304.Spec : Prop :=
  ∀ n, P18153554382833569304.a n = A284790 (n + 1)

theorem P18153554382833569304.correct : P18153554382833569304.Spec := by
  intro n
  simp only [A284790, Nat.add_sub_cancel]

end A284790

/-! ## A284790.P16902014114520831970

`eq[1, A284789(n+1)+1]+1`
-/

namespace A284790.P16902014114520831970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284789 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284790.P16902014114520831970

namespace A284790

/-- `eq[1, A284789(n+1)+1]+1` -/
def P16902014114520831970.Spec : Prop :=
  ∀ n, (P16902014114520831970.a n : ℤ) = A284790 (n + 1)

end A284790

/-! ## A284790.P12768752612951846345

`record[n+1-A255747(n*A284789(n+1))]`
-/

namespace A284790.P12768752612951846345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A255747 ((n : ℤ) * A284789 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284790.P12768752612951846345

namespace A284790

/-- `record[n+1-A255747(n*A284789(n+1))]` -/
def P12768752612951846345.Spec : Prop :=
  ∀ n, P12768752612951846345.a n = A284790 (n + 1)

end A284790

/-! ## A284790.P5218041757387286249

`record[n+1-A000040(n+1)*A284789(n+1)]`
-/

namespace A284790.P5218041757387286249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A284789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284790.P5218041757387286249

namespace A284790

/-- `record[n+1-A000040(n+1)*A284789(n+1)]` -/
def P5218041757387286249.Spec : Prop :=
  ∀ n, P5218041757387286249.a n = A284790 (n + 1)

end A284790

/-! ## A284790.P7543992251211009243

`record[n+1-A060151(n+1)*A284789(n+1)]`
-/

namespace A284790.P7543992251211009243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A060151 (n + 1) * A284789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284790.P7543992251211009243

namespace A284790

/-- `record[n+1-A060151(n+1)*A284789(n+1)]` -/
def P7543992251211009243.Spec : Prop :=
  ∀ n, P7543992251211009243.a n = A284790 (n + 1)

end A284790

/-!
# A284791: Positions of 1 in A284789; complement of A284790.

The programs for A284791, the canonical program `A284791.P2982177250107877844` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284791 has offset 1).

The definition of A284791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284791.P4575451400540935782

`(-1)^n+comp[3*n+1]+comp[(n+1)*(xor(n, n+1)+1)]+1`
-/

namespace A284791.P4575451400540935782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.xor n (n + 1) + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) : ℤ)

end

end A284791.P4575451400540935782

namespace A284791

/-- `(-1)^n+comp[3*n+1]+comp[(n+1)*(xor(n, n+1)+1)]+1` -/
def P4575451400540935782.Spec : Prop :=
  ∀ n, P4575451400540935782.a n = A284791 (n + 1)

end A284791

/-! ## A284791.P2982177250107877844

`A284933(n+1)+A033999(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284791

/-- `A284933(n+1)+A033999(n)` -/
def P2982177250107877844.Spec : Prop :=
  ∀ n, P2982177250107877844.a n = A284791 (n + 1)

theorem P2982177250107877844.correct : P2982177250107877844.Spec := by
  intro n
  simp only [A284791, Nat.add_sub_cancel]

end A284791

/-! ## A284791.P1444712213763327457

`A286065(n+1)-A026465(n+1)`
-/

namespace A284791.P1444712213763327457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286065 (n + 1) - A026465 (n + 1)

end

end A284791.P1444712213763327457

namespace A284791

/-- `A286065(n+1)-A026465(n+1)` -/
def P1444712213763327457.Spec : Prop :=
  ∀ n, P1444712213763327457.a n = A284791 (n + 1)

end A284791

/-! ## A284791.P4870499400116268053

`A000035(n+1)+A284933(n+1)-A000035(n)`
-/

namespace A284791.P4870499400116268053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A284933 (n + 1) - A000035 n)

end

end A284791.P4870499400116268053

namespace A284791

/-- `A000035(n+1)+A284933(n+1)-A000035(n)` -/
def P4870499400116268053.Spec : Prop :=
  ∀ n, P4870499400116268053.a n = A284791 (n + 1)

end A284791

/-! ## A284791.P12820644467823827200

`A332823(A000040(n+1))+A284933(n+1)`
-/

namespace A284791.P12820644467823827200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A000040 (n + 1)).toNat + A284933 (n + 1)

end

end A284791.P12820644467823827200

namespace A284791

/-- `A332823(A000040(n+1))+A284933(n+1)` -/
def P12820644467823827200.Spec : Prop :=
  ∀ n, P12820644467823827200.a n = A284791 (n + 1)

end A284791

/-! ## A284791.P18234172727506664240

`record[A284934(n+1)/A143331(n+1)]`
-/

namespace A284791.P18234172727506664240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284934 (n + 1) : ℚ) / (A143331 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284791.P18234172727506664240

namespace A284791

/-- `record[A284934(n+1)/A143331(n+1)]` -/
def P18234172727506664240.Spec : Prop :=
  ∀ n, P18234172727506664240.a n = (A284791 (n + 1) : ℚ)

end A284791

/-! ## A284791.P12633542381837223610

`filter[n+1, A284789(#)]`
-/

namespace A284791.P12633542381837223610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284789 (f1 j) = 1) n)

end

end A284791.P12633542381837223610

namespace A284791

/-- `filter[n+1, A284789(#)]` -/
def P12633542381837223610.Spec : Prop :=
  ∀ n, (P12633542381837223610.a n : ℤ) = A284791 (n + 1)

end A284791

/-! ## A284791.P8364723263934461064

`eq[1, A284789(n+1)]+1`
-/

namespace A284791.P8364723263934461064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284789 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284791.P8364723263934461064

namespace A284791

/-- `eq[1, A284789(n+1)]+1` -/
def P8364723263934461064.Spec : Prop :=
  ∀ n, (P8364723263934461064.a n : ℤ) = A284791 (n + 1)

end A284791

/-! ## A284791.P5035523366381303985

`record[(n+2)*A284789(n+2)]`
-/

namespace A284791.P5035523366381303985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A284789 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284791.P5035523366381303985

namespace A284791

/-- `record[(n+2)*A284789(n+2)]` -/
def P5035523366381303985.Spec : Prop :=
  ∀ n, P5035523366381303985.a n = A284791 (n + 1)

end A284791

/-!
# A284792: {1001->1}-transform of the Thue-Morse word A010060.

The programs for A284792, the canonical program `A284792.P14898968063971139874` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284792 has offset 1).

The definition of A284792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284792.P14898968063971139874

`char[A284934(n+1)-1]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A284792

/-- `char[A284934(n+1)-1]` -/
def P14898968063971139874.Spec : Prop :=
  ∀ n, (P14898968063971139874.a n : ℤ) = A284792 (n + 1)

theorem P14898968063971139874.correct : P14898968063971139874.Spec := by
  intro n
  simp only [A284792, Nat.add_sub_cancel]

end A284792

/-! ## A284792.P8019657005186882115

`char[comp[A284933(n+1)-1]]`
-/

namespace A284792.P8019657005186882115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284933 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A284792.P8019657005186882115

namespace A284792

/-- `char[comp[A284933(n+1)-1]]` -/
def P8019657005186882115.Spec : Prop :=
  ∀ n, (P8019657005186882115.a n : ℤ) = A284792 (n + 1)

end A284792

/-! ## A284792.P9381897097684920876

`(A286495(n+1)+n+1)²%3`
-/

namespace A284792.P9381897097684920876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A286495 (n + 1) + (n + 1 : ℤ)) ^ 2) 3

end

end A284792.P9381897097684920876

namespace A284792

/-- `(A286495(n+1)+n+1)²%3` -/
def P9381897097684920876.Spec : Prop :=
  ∀ n, P9381897097684920876.a n = A284792 (n + 1)

end A284792

/-! ## A284792.P16464685157971520314

`val(A286527(Δ[A286495(n+1)]), 2)`
-/

namespace A284792.P16464685157971520314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286495 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A286527 (f1 (n + 1) - f1 n).toNat).toNat 2

end

end A284792.P16464685157971520314

namespace A284792

/-- `val(A286527(Δ[A286495(n+1)]), 2)` -/
def P16464685157971520314.Spec : Prop :=
  ∀ n, (P16464685157971520314.a n : ℤ) = A284792 (n + 1)

end A284792

/-! ## A284792.P18071422382285041788

`A000035(lt[A284388(n+1), val(n+1, 2)+1])`
-/

namespace A284792.P18071422382285041788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A284792.P18071422382285041788

namespace A284792

/-- `A000035(lt[A284388(n+1), val(n+1, 2)+1])` -/
def P18071422382285041788.Spec : Prop :=
  ∀ n, P18071422382285041788.a n = A284792 (n + 1)

end A284792

/-! ## A284792.P7444543639330345221

`A000035(lt[A284388(n+1), A010690(n)])`
-/

namespace A284792.P7444543639330345221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284792.P7444543639330345221

namespace A284792

/-- `A000035(lt[A284388(n+1), A010690(n)])` -/
def P7444543639330345221.Spec : Prop :=
  ∀ n, P7444543639330345221.a n = A284792 (n + 1)

end A284792

/-! ## A284792.P5456623618987522250

`A000035(lt[A284388(n+1), A000035(n)+1])`
-/

namespace A284792.P5456623618987522250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284792.P5456623618987522250

namespace A284792

/-- `A000035(lt[A284388(n+1), A000035(n)+1])` -/
def P5456623618987522250.Spec : Prop :=
  ∀ n, P5456623618987522250.a n = A284792 (n + 1)

end A284792

/-! ## A284792.P14265151461200651766

`eq[1, A285091(n+1)%2]%2`
-/

namespace A284792.P14265151461200651766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285091 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2

end

end A284792.P14265151461200651766

namespace A284792

/-- `eq[1, A285091(n+1)%2]%2` -/
def P14265151461200651766.Spec : Prop :=
  ∀ n, (P14265151461200651766.a n : ℤ) = A284792 (n + 1)

end A284792

/-! ## A284792.P1210089346087139522

`1-A286493(A286495(n+1)+1)`
-/

namespace A284792.P1210089346087139522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286493 (A286495 (n + 1) + 1).toNat

end

end A284792.P1210089346087139522

namespace A284792

/-- `1-A286493(A286495(n+1)+1)` -/
def P1210089346087139522.Spec : Prop :=
  ∀ n, P1210089346087139522.a n = A284792 (n + 1)

end A284792

/-! ## A284792.P17264520136585975280

`A286487(eq[1, (n+1)^tanh(A286487(n+2))]+1)`
-/

namespace A284792.P17264520136585975280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (Real.tanh (A286487 (n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1)

end

end A284792.P17264520136585975280

namespace A284792

/-- `A286487(eq[1, (n+1)^tanh(A286487(n+2))]+1)` -/
def P17264520136585975280.Spec : Prop :=
  ∀ n, P17264520136585975280.a n = A284792 (n + 1)

end A284792

/-! ## A284792.P18228024618062745974

`A286487(eq[(n+1)*A286487(n+2), A286487(n+2)]+1)`
-/

namespace A284792.P18228024618062745974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A286487 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A284792.P18228024618062745974

namespace A284792

/-- `A286487(eq[(n+1)*A286487(n+2), A286487(n+2)]+1)` -/
def P18228024618062745974.Spec : Prop :=
  ∀ n, P18228024618062745974.a n = A284792 (n + 1)

end A284792

/-!
# A284793: Difference sequence of A284775.

The programs for A284793, the canonical program `A284793.P3906525423452783720` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284793 has offset 1).

The definition of A284793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284793.P3906525423452783720

`A285305(n+1)-A284775(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A284793

/-- `A285305(n+1)-A284775(n+1)` -/
def P3906525423452783720.Spec : Prop :=
  ∀ n, P3906525423452783720.a n = A284793 (n + 1)

theorem P3906525423452783720.correct : P3906525423452783720.Spec := by
  intro n
  simp only [A284793, Nat.add_sub_cancel]

end A284793

/-! ## A284793.P8023995046320588076

`A285305(n+1)-char[A285307(n+1)]`
-/

namespace A284793.P8023995046320588076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284793.P8023995046320588076

namespace A284793

/-- `A285305(n+1)-char[A285307(n+1)]` -/
def P8023995046320588076.Spec : Prop :=
  ∀ n, P8023995046320588076.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P15677361757195694447

`Δ[A284775(n+1)]`
-/

namespace A284793.P15677361757195694447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284793.P15677361757195694447

namespace A284793

/-- `Δ[A284775(n+1)]` -/
def P15677361757195694447.Spec : Prop :=
  ∀ n, P15677361757195694447.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P9353703027888226042

`Δ[char[A285307(n+1)]]`
-/

namespace A284793.P9353703027888226042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A284793.P9353703027888226042

namespace A284793

/-- `Δ[char[A285307(n+1)]]` -/
def P9353703027888226042.Spec : Prop :=
  ∀ n, P9353703027888226042.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P548175200302444088

`Δ[char[A014681(A285306(n+1))]]`
-/

namespace A284793.P548175200302444088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A285306 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A284793.P548175200302444088

namespace A284793

/-- `Δ[char[A014681(A285306(n+1))]]` -/
def P548175200302444088.Spec : Prop :=
  ∀ n, P548175200302444088.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P17341508523852502635

`A284775(n+2)-A284775(n+1)`
-/

namespace A284793.P17341508523852502635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 2) - A284775 (n + 1)

end

end A284793.P17341508523852502635

namespace A284793

/-- `A284775(n+2)-A284775(n+1)` -/
def P17341508523852502635.Spec : Prop :=
  ∀ n, P17341508523852502635.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P12252832786096016596

`Δ[Δ[A284818(n+1)]]`
-/

namespace A284793.P12252832786096016596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284793.P12252832786096016596

namespace A284793

/-- `Δ[Δ[A284818(n+1)]]` -/
def P12252832786096016596.Spec : Prop :=
  ∀ n, P12252832786096016596.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P5702649342394619997

`Δ[Δ[comp[A189666(n+1)]]]`
-/

namespace A284793.P5702649342394619997
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284793.P5702649342394619997

namespace A284793

/-- `Δ[Δ[comp[A189666(n+1)]]]` -/
def P5702649342394619997.Spec : Prop :=
  ∀ n, P5702649342394619997.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P2243783356702644901

`Δ[Δ[A189667(a(n-1))+n+1]]` with `a(0)=1`
-/

namespace A284793.P2243783356702644901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A189667 (f2 (n - 1)).toNat + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284793.P2243783356702644901

namespace A284793

/-- `Δ[Δ[A189667(a(n-1))+n+1]]` -/
def P2243783356702644901.Spec : Prop :=
  ∀ n, P2243783356702644901.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P5870281320455312547

`Δ[A284817(A026137(n+1))]`
-/

namespace A284793.P5870281320455312547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (A026137 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284793.P5870281320455312547

namespace A284793

/-- `Δ[A284817(A026137(n+1))]` -/
def P5870281320455312547.Spec : Prop :=
  ∀ n, P5870281320455312547.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P9027052317204335204

`Δ[A284817(A032766(n+1))]`
-/

namespace A284793.P9027052317204335204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (A032766 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284793.P9027052317204335204

namespace A284793

/-- `Δ[A284817(A032766(n+1))]` -/
def P9027052317204335204.Spec : Prop :=
  ∀ n, P9027052317204335204.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P8921885155871764644

`Δ[A284817(A064455(n+1))]`
-/

namespace A284793.P8921885155871764644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (A064455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284793.P8921885155871764644

namespace A284793

/-- `Δ[A284817(A064455(n+1))]` -/
def P8921885155871764644.Spec : Prop :=
  ∀ n, P8921885155871764644.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P10450376330757475553

`Δ[A189664(A267528(n+1))]`
-/

namespace A284793.P10450376330757475553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (A267528 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284793.P10450376330757475553

namespace A284793

/-- `Δ[A189664(A267528(n+1))]` -/
def P10450376330757475553.Spec : Prop :=
  ∀ n, P10450376330757475553.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P10120016102217274297

`Δ[A284817(A189669(n+1))]`
-/

namespace A284793.P10120016102217274297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (A189669 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284793.P10120016102217274297

namespace A284793

/-- `Δ[A284817(A189669(n+1))]` -/
def P10120016102217274297.Spec : Prop :=
  ∀ n, P10120016102217274297.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P6417151937284818406

`Δ[A189664(A320928(n+1))]`
-/

namespace A284793.P6417151937284818406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (A320928 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284793.P6417151937284818406

namespace A284793

/-- `Δ[A189664(A320928(n+1))]` -/
def P6417151937284818406.Spec : Prop :=
  ∀ n, P6417151937284818406.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P7228300483287123902

`Δ[A189664(A294732(n+2))]`
-/

namespace A284793.P7228300483287123902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (A294732 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284793.P7228300483287123902

namespace A284793

/-- `Δ[A189664(A294732(n+2))]` -/
def P7228300483287123902.Spec : Prop :=
  ∀ n, P7228300483287123902.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P1580453311853400342

`Δ[A157129(Δ[n²])]`
-/

namespace A284793.P1580453311853400342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157129 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284793.P1580453311853400342

namespace A284793

/-- `Δ[A157129(Δ[n²])]` -/
def P1580453311853400342.Spec : Prop :=
  ∀ n, P1580453311853400342.a n = A284793 (n + 1)

end A284793

/-! ## A284793.P1949410865113523126

`Δ[log2(A071928(Δ[n²]))]`
-/

namespace A284793.P1949410865113523126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A071928 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284793.P1949410865113523126

namespace A284793

/-- `Δ[log2(A071928(Δ[n²]))]` -/
def P1949410865113523126.Spec : Prop :=
  ∀ n, P1949410865113523126.a n = (A284793 (n + 1) : ℝ)

end A284793

/-! ## A284793.P13514139468007655657

`log2(ratio[A071928(2*(n+1))])`
-/

namespace A284793.P13514139468007655657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071928 (2 * (n + 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A284793.P13514139468007655657

namespace A284793

/-- `log2(ratio[A071928(2*(n+1))])` -/
def P13514139468007655657.Spec : Prop :=
  ∀ n, P13514139468007655657.a n = (A284793 (n + 1) : ℝ)

end A284793

/-!
# A284794: Positions of -1 in A284793.

The programs for A284794, the canonical program `A284794.P2972452500732799436` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284794 has offset 1).

The definition of A284794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284794.P2972452500732799436

`2*A189665(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A284794

/-- `2*A189665(n+1)` -/
def P2972452500732799436.Spec : Prop :=
  ∀ n, P2972452500732799436.a n = A284794 (n + 1)

theorem P2972452500732799436.correct : P2972452500732799436.Spec := by
  intro n
  simp only [A284794, Nat.add_sub_cancel]

end A284794

/-! ## A284794.P6769998762820328324

`or(1, A284796(n+1))+1`
-/

namespace A284794.P6769998762820328324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A284796 (n + 1)) + 1

end

end A284794.P6769998762820328324

namespace A284794

/-- `or(1, A284796(n+1))+1` -/
def P6769998762820328324.Spec : Prop :=
  ∀ n, P6769998762820328324.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P16798964440886032288

`∑[2*(A284775(n+1)+1)]`
-/

namespace A284794.P16798964440886032288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284775 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284794.P16798964440886032288

namespace A284794

/-- `∑[2*(A284775(n+1)+1)]` -/
def P16798964440886032288.Spec : Prop :=
  ∀ n, P16798964440886032288.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P16941615494644207047

`A284775(n+1)+A284796(n+1)+1`
-/

namespace A284794.P16941615494644207047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 1) + (A284796 (n + 1) + 1)

end

end A284794.P16941615494644207047

namespace A284794

/-- `A284775(n+1)+A284796(n+1)+1` -/
def P16941615494644207047.Spec : Prop :=
  ∀ n, P16941615494644207047.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P17965567698067582670

`2*(A284818(n+1)+A284775(n+1))`
-/

namespace A284794.P17965567698067582670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284818 (n + 1) + A284775 (n + 1))

end

end A284794.P17965567698067582670

namespace A284794

/-- `2*(A284818(n+1)+A284775(n+1))` -/
def P17965567698067582670.Spec : Prop :=
  ∀ n, P17965567698067582670.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P10731964777193532684

`2*∪[A287456(n+1), A287458(n+1)]`
-/

namespace A284794.P10731964777193532684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A284794.P10731964777193532684

namespace A284794

/-- `2*∪[A287456(n+1), A287458(n+1)]` -/
def P10731964777193532684.Spec : Prop :=
  ∀ n, (P10731964777193532684.a n : ℤ) = A284794 (n + 1)

end A284794

/-! ## A284794.P11399088408524783439

`2*(A284818(n+2)-1)`
-/

namespace A284794.P11399088408524783439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284818 (n + 2) - 1)

end

end A284794.P11399088408524783439

namespace A284794

/-- `2*(A284818(n+2)-1)` -/
def P11399088408524783439.Spec : Prop :=
  ∀ n, P11399088408524783439.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P5355116939420360646

`∑[2*Δ[A284818(n+1)]]`
-/

namespace A284794.P5355116939420360646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284794.P5355116939420360646

namespace A284794

/-- `∑[2*Δ[A284818(n+1)]]` -/
def P5355116939420360646.Spec : Prop :=
  ∀ n, P5355116939420360646.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P13593639051195639371

`∑[A284818(Δ[A284818(n+1)]+1)]`
-/

namespace A284794.P13593639051195639371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284794.P13593639051195639371

namespace A284794

/-- `∑[A284818(Δ[A284818(n+1)]+1)]` -/
def P13593639051195639371.Spec : Prop :=
  ∀ n, P13593639051195639371.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P9065235984330681722

`A189665(n+1)+A284796(n+2)-A189665(n+2)`
-/

namespace A284794.P9065235984330681722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 1) + (A284796 (n + 2) - A189665 (n + 2))

end

end A284794.P9065235984330681722

namespace A284794

/-- `A189665(n+1)+A284796(n+2)-A189665(n+2)` -/
def P9065235984330681722.Spec : Prop :=
  ∀ n, P9065235984330681722.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P18268239567665377602

`∑[A000032(A284818(n+2)-A284818(n+1))]+n+1`
-/

namespace A284794.P18268239567665377602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A284818 (n + 2) - A284818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A284794.P18268239567665377602

namespace A284794

/-- `∑[A000032(A284818(n+2)-A284818(n+1))]+n+1` -/
def P18268239567665377602.Spec : Prop :=
  ∀ n, P18268239567665377602.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P2958297803557541538

`record[2*(n+1)*abs(A287455(n+1)-1)]`
-/

namespace A284794.P2958297803557541538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * |A287455 (n + 1) - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284794.P2958297803557541538

namespace A284794

/-- `record[2*(n+1)*abs(A287455(n+1)-1)]` -/
def P2958297803557541538.Spec : Prop :=
  ∀ n, P2958297803557541538.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P8305793958201421197

`A004277(A189665(n+1))`
-/

namespace A284794.P8305793958201421197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A189665 (n + 1)).toNat

end

end A284794.P8305793958201421197

namespace A284794

/-- `A004277(A189665(n+1))` -/
def P8305793958201421197.Spec : Prop :=
  ∀ n, P8305793958201421197.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P14338678144792967290

`A005843(A284818(n+2)-1)`
-/

namespace A284794.P14338678144792967290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A284818 (n + 2) - 1).toNat

end

end A284794.P14338678144792967290

namespace A284794

/-- `A005843(A284818(n+2)-1)` -/
def P14338678144792967290.Spec : Prop :=
  ∀ n, P14338678144792967290.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P2733594717954171935

`A284777(A284818(n+2)-1)`
-/

namespace A284794.P2733594717954171935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (A284818 (n + 2) - 1).toNat

end

end A284794.P2733594717954171935

namespace A284794

/-- `A284777(A284818(n+2)-1)` -/
def P2733594717954171935.Spec : Prop :=
  ∀ n, P2733594717954171935.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P7967743483633681977

`filter[A285306(n+1), A354034(#)]`
-/

namespace A284794.P7967743483633681977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A284794.P7967743483633681977

namespace A284794

/-- `filter[A285306(n+1), A354034(#)]` -/
def P7967743483633681977.Spec : Prop :=
  ∀ n, P7967743483633681977.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P15989054128854748994

`A005843(∑[A284775(n+1)+1])`
-/

namespace A284794.P15989054128854748994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284794.P15989054128854748994

namespace A284794

/-- `A005843(∑[A284775(n+1)+1])` -/
def P15989054128854748994.Spec : Prop :=
  ∀ n, P15989054128854748994.a n = A284794 (n + 1)

end A284794

/-! ## A284794.P11013922415448596610

`∩[A284777(n+1), A285306(n+1)]`
-/

namespace A284794.P11013922415448596610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284794.P11013922415448596610

namespace A284794

/-- `∩[A284777(n+1), A285306(n+1)]` -/
def P11013922415448596610.Spec : Prop :=
  ∀ n, (P11013922415448596610.a n : ℤ) = A284794 (n + 1)

end A284794

/-!
# A284795: Positions of 0's in A284793.

The programs for A284795, the canonical program `A284795.P14279335911133809113` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284795 has offset 1).

The definition of A284795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284795.P14279335911133809113

`lt[2, A071928(n+1)]+n+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A284795

/-- `lt[2, A071928(n+1)]+n+1` -/
def P14279335911133809113.Spec : Prop :=
  ∀ n, (P14279335911133809113.a n : ℤ) = A284795 (n + 1)

theorem P14279335911133809113.correct : P14279335911133809113.Spec := by
  intro n
  simp only [A284795, Nat.add_sub_cancel]

end A284795

/-! ## A284795.P7559142428192758508

`lt[3, and(6, A284775(A065033(n+1))+3)]+n+1`
-/

namespace A284795.P7559142428192758508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A284775 (A065033 (n + 1)).toNat + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + (n + 1)

end

end A284795.P7559142428192758508

namespace A284795

/-- `lt[3, and(6, A284775(A065033(n+1))+3)]+n+1` -/
def P7559142428192758508.Spec : Prop :=
  ∀ n, (P7559142428192758508.a n : ℤ) = A284795 (n + 1)

end A284795

/-! ## A284795.P14270130396524427480

`lt[abs(A284793(n+1)), 1]+1`
-/

namespace A284795.P14270130396524427480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284793 (n + 1)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284795.P14270130396524427480

namespace A284795

/-- `lt[abs(A284793(n+1)), 1]+1` -/
def P14270130396524427480.Spec : Prop :=
  ∀ n, (P14270130396524427480.a n : ℤ) = A284795 (n + 1)

end A284795

/-! ## A284795.P6243596764442905963

`eq[0, A284793(A028310(n))]`
-/

namespace A284795.P6243596764442905963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284795.P6243596764442905963

namespace A284795

/-- `eq[0, A284793(A028310(n))]` -/
def P6243596764442905963.Spec : Prop :=
  ∀ n, (P6243596764442905963.a n : ℤ) = A284795 (n + 1)

end A284795

/-! ## A284795.P17464932314993635745

`eq[0, A284793(A093178(n))]`
-/

namespace A284795.P17464932314993635745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284795.P17464932314993635745

namespace A284795

/-- `eq[0, A284793(A093178(n))]` -/
def P17464932314993635745.Spec : Prop :=
  ∀ n, (P17464932314993635745.a n : ℤ) = A284795 (n + 1)

end A284795

/-! ## A284795.P9342670163921244581

`A004442(eq[0, A284793(n+1)])`
-/

namespace A284795.P9342670163921244581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284795.P9342670163921244581

namespace A284795

/-- `A004442(eq[0, A284793(n+1)])` -/
def P9342670163921244581.Spec : Prop :=
  ∀ n, P9342670163921244581.a n = A284795 (n + 1)

end A284795

/-! ## A284795.P15178327515686510379

`A109613(eq[0, A284793(n+1)])`
-/

namespace A284795.P15178327515686510379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284795.P15178327515686510379

namespace A284795

/-- `A109613(eq[0, A284793(n+1)])` -/
def P15178327515686510379.Spec : Prop :=
  ∀ n, P15178327515686510379.a n = A284795 (n + 1)

end A284795

/-! ## A284795.P4710881916261813976

`A109613(lt[A284793(n+1)², 1])`
-/

namespace A284795.P4710881916261813976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A284795.P4710881916261813976

namespace A284795

/-- `A109613(lt[A284793(n+1)², 1])` -/
def P4710881916261813976.Spec : Prop :=
  ∀ n, P4710881916261813976.a n = A284795 (n + 1)

end A284795

/-! ## A284795.P15835598708856745591

`eq[A284775(n+1), A285305(n+1)]+1`
-/

namespace A284795.P15835598708856745591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A284795.P15835598708856745591

namespace A284795

/-- `eq[A284775(n+1), A285305(n+1)]+1` -/
def P15835598708856745591.Spec : Prop :=
  ∀ n, (P15835598708856745591.a n : ℤ) = A284795 (n + 1)

end A284795

/-! ## A284795.P14680977906067015428

`eq[A284775(n+2), A284775(n+1)]+1`
-/

namespace A284795.P14680977906067015428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A284795.P14680977906067015428

namespace A284795

/-- `eq[A284775(n+2), A284775(n+1)]+1` -/
def P14680977906067015428.Spec : Prop :=
  ∀ n, (P14680977906067015428.a n : ℤ) = A284795 (n + 1)

end A284795

/-! ## A284795.P16982334146803285278

`eq[A285305(n+2), A285305(n+1)]+2`
-/

namespace A284795.P16982334146803285278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A284795.P16982334146803285278

namespace A284795

/-- `eq[A285305(n+2), A285305(n+1)]+2` -/
def P16982334146803285278.Spec : Prop :=
  ∀ n, (P16982334146803285278.a n : ℤ) = A284795 (n + 1)

end A284795

/-! ## A284795.P15459588774050450734

`lt[3, A020639((A284793(n)+2)*a(n-1)+3)]` with `a(0)=2`
-/

namespace A284795.P15459588774050450734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A020639 ((A284793 n + 2) * f2 (n - 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A284795.P15459588774050450734

namespace A284795

/-- `lt[3, A020639((A284793(n)+2)*a(n-1)+3)]` -/
def P15459588774050450734.Spec : Prop :=
  ∀ n, (P15459588774050450734.a n : ℤ) = A284795 (n + 1)

end A284795

/-! ## A284795.P14059175133458243878

`eq[A284775(n+1), A284775(A000038(n)+n)]`
-/

namespace A284795.P14059175133458243878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284795.P14059175133458243878

namespace A284795

/-- `eq[A284775(n+1), A284775(A000038(n)+n)]` -/
def P14059175133458243878.Spec : Prop :=
  ∀ n, (P14059175133458243878.a n : ℤ) = A284795 (n + 1)

end A284795

/-! ## A284795.P9540882843265950745

`A109613(lt[A284793(3*n+1), 1])`
-/

namespace A284795.P9540882843265950745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A284795.P9540882843265950745

namespace A284795

/-- `A109613(lt[A284793(3*n+1), 1])` -/
def P9540882843265950745.Spec : Prop :=
  ∀ n, P9540882843265950745.a n = A284795 (n + 1)

end A284795

/-!
# A284796: Positions of 1's in A284793.

The programs for A284796, the canonical program `A284796.P6640145476015724688` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284796 has offset 1).

The definition of A284796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284796.P6823867283287536618

`A189665(n+1)+A284818(n+1)-1`
-/

namespace A284796.P6823867283287536618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 1) + (A284818 (n + 1) - 1)

end

end A284796.P6823867283287536618

namespace A284796

/-- `A189665(n+1)+A284818(n+1)-1` -/
def P6823867283287536618.Spec : Prop :=
  ∀ n, P6823867283287536618.a n = A284796 (n + 1)

end A284796

/-! ## A284796.P6640145476015724688

`A284794(n+1)-(A284775(n+1)+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A284796

/-- `A284794(n+1)-(A284775(n+1)+1)` -/
def P6640145476015724688.Spec : Prop :=
  ∀ n, P6640145476015724688.a n = A284796 (n + 1)

theorem P6640145476015724688.correct : P6640145476015724688.Spec := by
  intro n
  simp only [A284796, Nat.add_sub_cancel]

end A284796

/-! ## A284796.P5191240974513952154

`A284818(n+2)+A284818(n+1)-2`
-/

namespace A284796.P5191240974513952154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 2) + (A284818 (n + 1) - 2)

end

end A284796.P5191240974513952154

namespace A284796

/-- `A284818(n+2)+A284818(n+1)-2` -/
def P5191240974513952154.Spec : Prop :=
  ∀ n, P5191240974513952154.a n = A284796 (n + 1)

end A284796

/-! ## A284796.P7653630603139510710

`A284776(A189665(n+1))`
-/

namespace A284796.P7653630603139510710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284776 (A189665 (n + 1)).toNat

end

end A284796.P7653630603139510710

namespace A284796

/-- `A284776(A189665(n+1))` -/
def P7653630603139510710.Spec : Prop :=
  ∀ n, P7653630603139510710.a n = A284796 (n + 1)

end A284796

/-! ## A284796.P3685480443881885320

`A285307(A284818(n+1))`
-/

namespace A284796.P3685480443881885320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (A284818 (n + 1)).toNat

end

end A284796.P3685480443881885320

namespace A284796

/-- `A285307(A284818(n+1))` -/
def P3685480443881885320.Spec : Prop :=
  ∀ n, P3685480443881885320.a n = A284796 (n + 1)

end A284796

/-! ## A284796.P9030695855143504504

`A284776(A284818(n+2)-1)`
-/

namespace A284796.P9030695855143504504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284776 (A284818 (n + 2) - 1).toNat

end

end A284796.P9030695855143504504

namespace A284796

/-- `A284776(A284818(n+2)-1)` -/
def P9030695855143504504.Spec : Prop :=
  ∀ n, P9030695855143504504.a n = A284796 (n + 1)

end A284796

/-! ## A284796.P11286126304295669961

`A284776(A284794(n+1)/2)`
-/

namespace A284796.P11286126304295669961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284776 (SequenceMachineLib.roundAway ((A284794 (n + 1) : ℚ) / 2)).toNat

end

end A284796.P11286126304295669961

namespace A284796

/-- `A284776(A284794(n+1)/2)` -/
def P11286126304295669961.Spec : Prop :=
  ∀ n, P11286126304295669961.a n = A284796 (n + 1)

end A284796

/-! ## A284796.P10122461824923928307

`A284776(∑[A284775(n+1)+1])`
-/

namespace A284796.P10122461824923928307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284776 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284796.P10122461824923928307

namespace A284796

/-- `A284776(∑[A284775(n+1)+1])` -/
def P10122461824923928307.Spec : Prop :=
  ∀ n, P10122461824923928307.a n = A284796 (n + 1)

end A284796

/-! ## A284796.P13875709619767387965

`∩[A284776(n+1), A285307(n+1)]`
-/

namespace A284796.P13875709619767387965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284796.P13875709619767387965

namespace A284796

/-- `∩[A284776(n+1), A285307(n+1)]` -/
def P13875709619767387965.Spec : Prop :=
  ∀ n, (P13875709619767387965.a n : ℤ) = A284796 (n + 1)

end A284796

/-! ## A284796.P2981959637952144172

`A284776(A284818(n+1))+A284775(n+1)`
-/

namespace A284796.P2981959637952144172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284776 (A284818 (n + 1)).toNat + A284775 (n + 1)

end

end A284796.P2981959637952144172

namespace A284796

/-- `A284776(A284818(n+1))+A284775(n+1)` -/
def P2981959637952144172.Spec : Prop :=
  ∀ n, P2981959637952144172.a n = A284796 (n + 1)

end A284796

/-! ## A284796.P2803676064634564821

`A285307(A189665(n+1)-A284775(n+1))`
-/

namespace A284796.P2803676064634564821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (A189665 (n + 1) - A284775 (n + 1)).toNat

end

end A284796.P2803676064634564821

namespace A284796

/-- `A285307(A189665(n+1)-A284775(n+1))` -/
def P2803676064634564821.Spec : Prop :=
  ∀ n, P2803676064634564821.a n = A284796 (n + 1)

end A284796

/-! ## A284796.P2193600451954214476

`A229785(Δ[n²])`
-/

namespace A284796.P2193600451954214476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229785 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284796.P2193600451954214476

namespace A284796

/-- `A229785(Δ[n²])` -/
def P2193600451954214476.Spec : Prop :=
  ∀ n, P2193600451954214476.a n = A284796 (n + 1)

end A284796

/-! ## A284796.P9120208880431731306

`filter[A229785(2*n+1), A316829(#)]`
-/

namespace A284796.P9120208880431731306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229785 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316829 (f1 j).toNat = 1) n)

end

end A284796.P9120208880431731306

namespace A284796

/-- `filter[A229785(2*n+1), A316829(#)]` -/
def P9120208880431731306.Spec : Prop :=
  ∀ n, P9120208880431731306.a n = A284796 (n + 1)

end A284796

/-! ## A284796.P1158822699863605770

`∩[A229785(n+1), A284776(n+1)]`
-/

namespace A284796.P1158822699863605770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284796.P1158822699863605770

namespace A284796

/-- `∩[A229785(n+1), A284776(n+1)]` -/
def P1158822699863605770.Spec : Prop :=
  ∀ n, (P1158822699863605770.a n : ℤ) = A284796 (n + 1)

end A284796

/-! ## A284796.P1440183444682848156

`∩[A229785(n+1), A285307(n+1)]`
-/

namespace A284796.P1440183444682848156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284796.P1440183444682848156

namespace A284796

/-- `∩[A229785(n+1), A285307(n+1)]` -/
def P1440183444682848156.Spec : Prop :=
  ∀ n, (P1440183444682848156.a n : ℤ) = A284796 (n + 1)

end A284796

/-! ## A284796.P18244508973037827196

`A284794(n+1)-A157129(2*n+1)`
-/

namespace A284796.P18244508973037827196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284794 (n + 1) - A157129 (2 * n + 1)

end

end A284796.P18244508973037827196

namespace A284796

/-- `A284794(n+1)-A157129(2*n+1)` -/
def P18244508973037827196.Spec : Prop :=
  ∀ n, P18244508973037827196.a n = A284796 (n + 1)

end A284796

/-! ## A284796.P1584443383476042032

`A229785(2*(n+1))-A157129(2*n+1)`
-/

namespace A284796.P1584443383476042032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229785 (2 * (n + 1)) - A157129 (2 * n + 1)

end

end A284796.P1584443383476042032

namespace A284796

/-- `A229785(2*(n+1))-A157129(2*n+1)` -/
def P1584443383476042032.Spec : Prop :=
  ∀ n, P1584443383476042032.a n = A284796 (n + 1)

end A284796

/-! ## A284796.P17864583320471618180

`∑[A071928(2*(n+1))]-log2(A071928(2*(n+1)))`
-/

namespace A284796.P17864583320471618180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071928 (2 * (n + 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) - Real.logb 2 (A071928 (2 * (n + 1)) : ℝ)

end

end A284796.P17864583320471618180

namespace A284796

/-- `∑[A071928(2*(n+1))]-log2(A071928(2*(n+1)))` -/
def P17864583320471618180.Spec : Prop :=
  ∀ n, P17864583320471618180.a n = (A284796 (n + 1) : ℝ)

end A284796

/-! ## A284796.P9602134706316158044

`eq[1, A284793(n+1)]+1`
-/

namespace A284796.P9602134706316158044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284796.P9602134706316158044

namespace A284796

/-- `eq[1, A284793(n+1)]+1` -/
def P9602134706316158044.Spec : Prop :=
  ∀ n, (P9602134706316158044.a n : ℤ) = A284796 (n + 1)

end A284796

/-!
# A284797: Write in base k, complement, reverse. Case k = 3.

The programs for A284797, there is no canonical definition to state claims against.
-/

/-! ## A284797.P7022175296743899367

`A171960(n)+A055947(n)`
-/

namespace A284797.P7022175296743899367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 n + A055947 n

end

end A284797.P7022175296743899367

/-! ## A284797.P14166641427571531811

`A171960(n)+n-A030102(n)`
-/

namespace A284797.P14166641427571531811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 n + ((n : ℤ) - A030102 n)

end

end A284797.P14166641427571531811

/-! ## A284797.P16096582456636213445

`A055947(n)+A004488(A256293(n))`
-/

namespace A284797.P16096582456636213445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n + A004488 (A256293 n).toNat

end

end A284797.P16096582456636213445

/-! ## A284797.P18073462068187822459

`A005843(n)+A171960(n)-A055946(n)`
-/

namespace A284797.P18073462068187822459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A171960 n - A055946 n)

end

end A284797.P18073462068187822459

/-! ## A284797.P18356529370504055172

`A171960(n)+n-A137305(A004488(n))`
-/

namespace A284797.P18356529370504055172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 n + ((n : ℤ) - A137305 (A004488 n).toNat)

end

end A284797.P18356529370504055172

/-! ## A284797.P8787627470002814043

`A171960(n)-A001489(n)-A030102(n)`
-/

namespace A284797.P8787627470002814043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 n - A001489 n - A030102 n

end

end A284797.P8787627470002814043

/-! ## A284797.P14381946215959186703

`A171960(n)-(A004488(A137305(n))-n)`
-/

namespace A284797.P14381946215959186703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 n - (A004488 (A137305 n).toNat - (n : ℤ))

end

end A284797.P14381946215959186703

/-! ## A284797.P3051092055391671535

`A055947(A028310(n))-A001489(A171960(n))`
-/

namespace A284797.P3051092055391671535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (A028310 n).toNat - A001489 (A171960 n).toNat

end

end A284797.P3051092055391671535

/-! ## A284797.P1978205143279937196

`A233583(A064235(n+1))-A030102(n)`
-/

namespace A284797.P1978205143279937196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A064235 (n + 1)).toNat - A030102 n

end

end A284797.P1978205143279937196

/-!
# A284798: Antipalindromic numbers in base 3.

The programs for A284798, there is no canonical definition to state claims against.
-/

/-! ## A284798.P10176671456642309887

`eq[A030102(n), A171960(n)]`
-/

namespace A284798.P10176671456642309887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284798.P10176671456642309887

/-! ## A284798.P10954179392313633006

`eq[A137305(n), A256293(n)]`
-/

namespace A284798.P10954179392313633006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256293 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284798.P10954179392313633006

/-! ## A284798.P5324529855033053338

`eq[A137305(A004488(n)), A171960(n)]`
-/

namespace A284798.P5324529855033053338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 (A004488 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284798.P5324529855033053338

/-! ## A284798.P7575222508740381832

`eq[0, A171960(A055946(n))]`
-/

namespace A284798.P7575222508740381832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A055946 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284798.P7575222508740381832

/-! ## A284798.P10195139041851652744

`record[(n+1)/A167877(A030102(n+1)+n)]`
-/

namespace A284798.P10195139041851652744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A167877 (A030102 (n + 1) + (n : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284798.P10195139041851652744

