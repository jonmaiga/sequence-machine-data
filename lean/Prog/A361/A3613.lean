import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A361300: Numbers of the form m^2 + p^2 for p prime and m > 0.

The programs for A361300, there is no canonical definition to state claims against.
-/

/-! ## A361300.P7945258366511794351

`eq[A025426(n), A118827(A299276(n))]`
-/

namespace A361300.P7945258366511794351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (A299276 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361300.P7945258366511794351

/-! ## A361300.P2438185795350660582

`lt[A319000(2*(n+1)), A063725(n)]`
-/

namespace A361300.P2438185795350660582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319000 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361300.P2438185795350660582

/-! ## A361300.P12974227052568833419

`A000404(lt[A290277(n+1), A060392(n+1)])`
-/

namespace A361300.P12974227052568833419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361300.P12974227052568833419

/-! ## A361300.P11951252571263804583

`A000404(record[A086375(n+1)+1])`
-/

namespace A361300.P11951252571263804583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086375 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361300.P11951252571263804583

/-!
# A361301: For the odd number 2n + 1, the least primitive practical number r such that 2n + 1 = r + p where p is prime.

The programs for A361301, there is no canonical definition to state claims against.
-/

/-! ## A361301.P12753360374243004741

`A050291(A033676(2*n+1)%A111441(n+1))`
-/

namespace A361301.P12753360374243004741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 (Int.tmod (A033676 (2 * n + 1)) (A111441 (n + 1))).toNat

end

end A361301.P12753360374243004741

/-! ## A361301.P7974957578547986009

`A017992(A281680(n)%A002319(n+1))`
-/

namespace A361301.P7974957578547986009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017992 (Int.tmod (A281680 n) (A002319 (n + 1))).toNat

end

end A361301.P7974957578547986009

/-!
# A361302: G.f. A(x) satisfies A(x) = Series_Reversion(x - x^3*A'(x)^3).

The programs for A361302, there is no canonical definition to state claims against.
-/

/-! ## A361302.P13505172583297442497

`A361536(n)/(2*(n+1)-1)`
-/

namespace A361302.P13505172583297442497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361536 n : ℚ) / ((2 * (n + 1) : ℤ) - 1 : ℚ)

end

end A361302.P13505172583297442497

/-! ## A361302.P17844419438774282249

`floor(A361536(n)/A005408(n))`
-/

namespace A361302.P17844419438774282249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A361536 n : ℚ) / (A005408 n : ℚ)⌋

end

end A361302.P17844419438774282249

/-! ## A361302.P9664087610702953143

`floor(A361536(n)/A028310(2*n+1))`
-/

namespace A361302.P9664087610702953143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A361536 n : ℚ) / (A028310 (2 * n + 1) : ℚ)⌋

end

end A361302.P9664087610702953143

/-! ## A361302.P2394534207401182622

`ceil(A361536(n)/A199084(2*n+1))`
-/

namespace A361302.P2394534207401182622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A361536 n : ℚ) / (A199084 (2 * n + 1) : ℚ)⌉

end

end A361302.P2394534207401182622

/-!
# A361303: Expansion of g.f. A(x) = Sum_{n>=0} d^n/dx^n x^(2*n) * (1 + x)^(3*n) / n!.

The programs for A361303, there is no canonical definition to state claims against.
-/

/-! ## A361303.P2137865074356998924

`(n+1)*A361305(n+1)`
-/

namespace A361303.P2137865074356998924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A361305 (n + 1)

end

end A361303.P2137865074356998924

/-!
# A361304: Expansion of g.f. A(x) = Sum_{n>=0} d^n/dx^n x^(2*n) * (1 + x)^(4*n) / n!.

The programs for A361304, there is no canonical definition to state claims against.
-/

/-! ## A361304.P4768846688904754804

`(n+1)*A361306(n+1)`
-/

namespace A361304.P4768846688904754804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A361306 (n + 1)

end

end A361304.P4768846688904754804

/-!
# A361305: Expansion of A(x) satisfying A(x) = x + A(x)^2*(1 + A(x))^3.

The programs for A361305, there is no canonical definition to state claims against.
-/

/-! ## A361305.P14837909202604572734

`A361303(n)/(n+1)`
-/

namespace A361305.P14837909202604572734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361303 n : ℚ) / (n + 1 : ℚ)

end

end A361305.P14837909202604572734

/-! ## A361305.P90926092563467173

`(n+1)^A008683(A020483(n))*A361303(n)`
-/

namespace A361305.P90926092563467173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A361303 n : ℚ)

end

end A361305.P90926092563467173

/-!
# A361306: Expansion of A(x) satisfying A(x) = x + A(x)^2*(1 + A(x))^4.

The programs for A361306, there is no canonical definition to state claims against.
-/

/-! ## A361306.P16498012501186250976

`A361304(n)/(n+1)`
-/

namespace A361306.P16498012501186250976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361304 n : ℚ) / (n + 1 : ℚ)

end

end A361306.P16498012501186250976

/-! ## A361306.P8939253587276608979

`A028310(A361304(n)/A291769(n))`
-/

namespace A361306.P8939253587276608979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A361304 n : ℚ) / (A291769 n : ℚ))).toNat

end

end A361306.P8939253587276608979

/-!
# A361307: G.f. A(x) satisfies A(x) = Series_Reversion(x - x^3*A'(x)^4).

The programs for A361307, there is no canonical definition to state claims against.
-/

/-! ## A361307.P16557740914764397614

`A361537(n)/(2*(n+1)-1)`
-/

namespace A361307.P16557740914764397614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361537 n : ℚ) / ((2 * (n + 1) : ℤ) - 1 : ℚ)

end

end A361307.P16557740914764397614

/-! ## A361307.P9492806364645347294

`floor(A361537(n)/A296882(2*n+1))`
-/

namespace A361307.P9492806364645347294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A361537 n : ℚ) / (A296882 (2 * n + 1) : ℚ)⌋

end

end A361307.P9492806364645347294

/-!
# A361308: G.f. A(x) satisfies A(x) = Series_Reversion(x - x^4*A'(x)).

The programs for A361308, there is no canonical definition to state claims against.
-/

/-! ## A361308.P12905360542335554611

`A361541(n)/(3*(n+1)-2)`
-/

namespace A361308.P12905360542335554611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361541 n : ℚ) / ((3 * (n + 1) : ℤ) - 2 : ℚ)

end

end A361308.P12905360542335554611

/-! ## A361308.P2982830524223651902

`round(A361541(n)/A016777(n))`
-/

namespace A361308.P2982830524223651902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A361541 n : ℚ) / (A016777 n : ℚ))

end

end A361308.P2982830524223651902

/-!
# A361309: G.f. A(x) satisfies A(x) = Series_Reversion(x - x^4*A'(x)^2).

The programs for A361309, there is no canonical definition to state claims against.
-/

/-! ## A361309.P3218356475724943782

`A361542(n)/(3*(n+1)-2)`
-/

namespace A361309.P3218356475724943782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361542 n : ℚ) / ((3 * (n + 1) : ℤ) - 2 : ℚ)

end

end A361309.P3218356475724943782

/-! ## A361309.P16056012830699814227

`floor(A361542(n)/A016777(n))`
-/

namespace A361309.P16056012830699814227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A361542 n : ℚ) / (A016777 n : ℚ)⌋

end

end A361309.P16056012830699814227

/-!
# A361310: G.f. A(x) satisfies A(x) = Series_Reversion(x - x^4*A'(x)^3).

The programs for A361310, there is no canonical definition to state claims against.
-/

/-! ## A361310.P7694194664429057443

`A361543(n)/(3*(n+1)-2)`
-/

namespace A361310.P7694194664429057443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361543 n : ℚ) / ((3 * (n + 1) : ℤ) - 2 : ℚ)

end

end A361310.P7694194664429057443

/-! ## A361310.P16331735573233365489

`round(A361543(n)/A016777(n))`
-/

namespace A361310.P16331735573233365489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A361543 n : ℚ) / (A016777 n : ℚ))

end

end A361310.P16331735573233365489

/-!
# A361311: G.f. A(x) satisfies A(x) = Series_Reversion(x - x^5*A'(x)).

The programs for A361311, there is no canonical definition to state claims against.
-/

/-! ## A361311.P14687252024258643750

`A361551(n)/(4*(n+1)-3)`
-/

namespace A361311.P14687252024258643750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361551 n : ℚ) / ((4 * (n + 1) : ℤ) - 3 : ℚ)

end

end A361311.P14687252024258643750

/-!
# A361316: Numerators of the harmonic means of the infinitary divisors of the positive integers.

The programs for A361316, there is no canonical definition to state claims against.
-/

/-! ## A361316.P7236127437527752025

`gcd(A236626(n+1), A361782(n+1))`
-/

namespace A361316.P7236127437527752025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236626 (n + 1)) (A361782 (n + 1))

end

end A361316.P7236127437527752025

/-! ## A361316.P13083528775060771208

`A052409(A030223(n+4))*A103339(n+1)`
-/

namespace A361316.P13083528775060771208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A030223 (n + 4)).toNat * A103339 (n + 1)

end

end A361316.P13083528775060771208

/-! ## A361316.P6235105861269159448

`A030597(A141250(n+1))*A103339(n+1)`
-/

namespace A361316.P6235105861269159448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030597 (A141250 (n + 1)).toNat * A103339 (n + 1)

end

end A361316.P6235105861269159448

/-! ## A361316.P17164013277831704241

`A361782(n+1)/A323022(A000051(n))`
-/

namespace A361316.P17164013277831704241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361782 (n + 1) : ℚ) / (A323022 (A000051 n).toNat : ℚ)

end

end A361316.P17164013277831704241

/-! ## A361316.P18030924496147862394

`A103339(n+1)*A359411(A360532(3*n+5))`
-/

namespace A361316.P18030924496147862394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103339 (n + 1) * A359411 (A360532 (3 * n + 5)).toNat

end

end A361316.P18030924496147862394

/-!
# A361317: Denominators of the harmonic means of the infinitary divisors of the positive integers.

The programs for A361317, there is no canonical definition to state claims against.
-/

/-! ## A361317.P14844246861268115977

`A361783(A187829(n+1))`
-/

namespace A361317.P14844246861268115977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361783 (A187829 (n + 1)).toNat

end

end A361317.P14844246861268115977

/-! ## A361317.P17051626170714754172

`A246337(A361783(n+1))`
-/

namespace A361317.P17051626170714754172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246337 (A361783 (n + 1)).toNat

end

end A361317.P17051626170714754172

/-! ## A361317.P13220975524928699807

`A361783(A299701(2^n))`
-/

namespace A361317.P13220975524928699807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361783 (A299701 (2 ^ n)).toNat

end

end A361317.P13220975524928699807

/-! ## A361317.P13896165011328593656

`A001222(2^A361783(n+1))`
-/

namespace A361317.P13896165011328593656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A361783 (n + 1) : ℤ))).toNat

end

end A361317.P13896165011328593656

/-! ## A361317.P2648554305342430152

`A051903(2^A361783(n+1))`
-/

namespace A361317.P2648554305342430152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A361783 (n + 1) : ℤ))).toNat

end

end A361317.P2648554305342430152

/-!
# A361319: Indices of records in the sequence of infinitary harmonic means A361316(k)/A361317(k).

The programs for A361319, there is no canonical definition to state claims against.
-/

/-! ## A361319.P16203650420488073069

`A361785(A151764(n+1))`
-/

namespace A361319.P16203650420488073069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361785 (A151764 (n + 1)).toNat

end

end A361319.P16203650420488073069

/-! ## A361319.P8617041817016919366

`A269394(A361785(n+1))`
-/

namespace A361319.P8617041817016919366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A361785 (n + 1)).toNat

end

end A361319.P8617041817016919366

/-! ## A361319.P14228416738926471409

`filter[A361785(n+1), A273592(#)]`
-/

namespace A361319.P14228416738926471409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A273592 (f1 j).toNat = 1) n)

end

end A361319.P14228416738926471409

/-! ## A361319.P3624560809464548509

`∩[A092629(n+1), A361785(n+1)]`
-/

namespace A361319.P3624560809464548509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361319.P3624560809464548509

/-! ## A361319.P4133502253797039763

`∩[A298303(n+1), A361785(n+1)]`
-/

namespace A361319.P4133502253797039763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361319.P4133502253797039763

/-!
# A361321: Lexicographically earliest infinite sequence of distinct elements of A000469 such that, for n > 2, a(n) has a common factor with a(n-1) but not with a(n-2).

The programs for A361321, there is no canonical definition to state claims against.
-/

/-! ## A361321.P13417849571201053006

`A000469(A361323(n+1))`
-/

namespace A361321.P13417849571201053006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (A361323 (n + 1)).toNat

end

end A361321.P13417849571201053006

/-! ## A361321.P11135383336343886390

`A019565(A361322(n+1))`
-/

namespace A361321.P11135383336343886390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A361322 (n + 1)).toNat

end

end A361321.P11135383336343886390

/-!
# A361322: The binary expansion of a(n) specifies which primes divide A361321(n).

The programs for A361322, there is no canonical definition to state claims against.
-/

/-! ## A361322.P16108317708543175035

`A048675(A361321(n+1))`
-/

namespace A361322.P16108317708543175035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A361321 (n + 1)).toNat

end

end A361322.P16108317708543175035

/-! ## A361322.P1995360859436861076

`∑{p}[A361321(n+1), A048676(#)]`
-/

namespace A361322.P1995360859436861076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A361322.P1995360859436861076

/-! ## A361322.P10855259200980235319

`∑{p}[A361321(n+1), A087207(#)]`
-/

namespace A361322.P10855259200980235319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A361322.P10855259200980235319

/-! ## A361322.P15749508272060256342

`∑{p}[A361321(n+1), A156552(#)]`
-/

namespace A361322.P15749508272060256342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A361322.P15749508272060256342

/-! ## A361322.P10468310786325144937

`∑{p}[A361321(n+1), A233249(#)]`
-/

namespace A361322.P10468310786325144937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A361322.P10468310786325144937

/-! ## A361322.P1712008315015756158

`A087207(∏{p}[A361321(n+1), #])`
-/

namespace A361322.P1712008315015756158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361322.P1712008315015756158

/-! ## A361322.P11062457608939755876

`A248663(∏{p}[A361321(n+1), #])`
-/

namespace A361322.P11062457608939755876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361322.P11062457608939755876

/-! ## A361322.P5928666743119748471

`A054977(n)*A087207(A361321(n+1))`
-/

namespace A361322.P5928666743119748471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A087207 (A361321 (n + 1)).toNat

end

end A361322.P5928666743119748471

/-! ## A361322.P9409406329801095808

`A087207(A361321(n+1))%A001769(n)`
-/

namespace A361322.P9409406329801095808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087207 (A361321 (n + 1)).toNat) (A001769 n)

end

end A361322.P9409406329801095808

/-! ## A361322.P6732828613044171712

`A087207(or(A000007(n), A361321(n+1)))`
-/

namespace A361322.P6732828613044171712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (Int.lor (A000007 n) (A361321 (n + 1))).toNat

end

end A361322.P6732828613044171712

/-!
# A361323: a(n) = k such that A000469(k) = A361321(n).

The programs for A361323, there is no canonical definition to state claims against.
-/

/-! ## A361323.P372089649087923042

`A209628(A361321(n+1))`
-/

namespace A361323.P372089649087923042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209628 (A361321 (n + 1)).toNat

end

end A361323.P372089649087923042

/-!
# A361325: Records in A361321.

The programs for A361325, there is no canonical definition to state claims against.
-/

/-! ## A361325.P5853228151274722402

`record[A361321(n+1)]`
-/

namespace A361325.P5853228151274722402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361325.P5853228151274722402

/-! ## A361325.P16357993149036281448

`A361321(A361326(n+1))`
-/

namespace A361325.P16357993149036281448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361321 (A361326 (n + 1)).toNat

end

end A361325.P16357993149036281448

/-! ## A361325.P15274646679056983629

`record[A361327(n+1)*A361328(n+1)]`
-/

namespace A361325.P15274646679056983629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361327 (n + 1) * A361328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361325.P15274646679056983629

/-! ## A361325.P5006621508427261331

`A000469(record[A361323(n+1)])`
-/

namespace A361325.P5006621508427261331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361325.P5006621508427261331

/-!
# A361326: Indices of records in A361321.

The programs for A361326, there is no canonical definition to state claims against.
-/

/-! ## A361326.P4827117497677215685

`A361324(record[A361323(n+1)])`
-/

namespace A361326.P4827117497677215685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361324 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361326.P4827117497677215685

/-!
# A361327: a(n) is the greatest prime factor of A361321(n) with a(1) = 1.

The programs for A361327, there is no canonical definition to state claims against.
-/

/-! ## A361327.P2602849769235727200

`A006530(A361321(n+1))`
-/

namespace A361327.P2602849769235727200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A361321 (n + 1)).toNat

end

end A361327.P2602849769235727200

/-! ## A361327.P13143572054558743186

`A006530(A000469(A361323(n+1)))`
-/

namespace A361327.P13143572054558743186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000469 (A361323 (n + 1)).toNat).toNat

end

end A361327.P13143572054558743186

/-! ## A361327.P14563601164075178909

`or(A010054(n), A053585(A361321(n+1)))`
-/

namespace A361327.P14563601164075178909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A053585 (A361321 (n + 1)).toNat)

end

end A361327.P14563601164075178909

/-! ## A361327.P11493993898005282534

`or(A053585(A361321(n+1)), A087748(n))`
-/

namespace A361327.P11493993898005282534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053585 (A361321 (n + 1)).toNat) (A087748 n)

end

end A361327.P11493993898005282534

/-! ## A361327.P5414512692441638449

`A223491(A361321(n+1)+A174275(2*(n+1)))`
-/

namespace A361327.P5414512692441638449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (A361321 (n + 1) + A174275 (2 * (n + 1))).toNat

end

end A361327.P5414512692441638449

/-!
# A361328: a(n) is the least prime factor of A361321(n) with a(1) = 1.

The programs for A361328, there is no canonical definition to state claims against.
-/

/-! ## A361328.P12867874499458470719

`A020639(A361321(n+1))`
-/

namespace A361328.P12867874499458470719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A361321 (n + 1)).toNat

end

end A361328.P12867874499458470719

/-! ## A361328.P3761735519109943681

`A020639(A000469(A361323(n+1)))`
-/

namespace A361328.P3761735519109943681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000469 (A361323 (n + 1)).toNat).toNat

end

end A361328.P3761735519109943681

/-! ## A361328.P8196717158327389191

`A034684(A361321(n+1))%A000040(n+1)`
-/

namespace A361328.P8196717158327389191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034684 (A361321 (n + 1)).toNat) (A000040 (n + 1))

end

end A361328.P8196717158327389191

/-! ## A361328.P15457628838908040090

`A034684(A361321(n+1)%A000928(n+1))`
-/

namespace A361328.P15457628838908040090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (Int.tmod (A361321 (n + 1)) (A000928 (n + 1))).toNat

end

end A361328.P15457628838908040090

/-! ## A361328.P5459544045749697058

`A034684(A361321(n+1)%A002755(n))`
-/

namespace A361328.P5459544045749697058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (Int.tmod (A361321 (n + 1)) (A002755 n)).toNat

end

end A361328.P5459544045749697058

/-!
# A361329: a(n) = gcd(A361321(n), A361321(n+1)).

The programs for A361329, there is no canonical definition to state claims against.
-/

/-! ## A361329.P939635488606538194

`gcd(A361321(n+1), A361321(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361329.P939635488606538194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A361321 (n + 1)) (A361321 (n + 2))

end

end A361329.P939635488606538194

/-! ## A361329.P7123396889227400503

`A000188(A361321(n+1)*A361321(n+2))`
-/

namespace A361329.P7123396889227400503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A361321 (n + 1) * A361321 (n + 2)).toNat

end

end A361329.P7123396889227400503

/-! ## A361329.P3207528736122572819

`A003557(A361321(n+1)*A361321(n+2))`
-/

namespace A361329.P3207528736122572819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A361321 (n + 1) * A361321 (n + 2)).toNat

end

end A361329.P3207528736122572819

/-!
# A361330: Smallest prime that does not divide A351495(n).

The programs for A361330, there is no canonical definition to state claims against.
-/

/-! ## A361330.P939274376061357745

`A053669(A351495(n+1))`
-/

namespace A361330.P939274376061357745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A351495 (n + 1)).toNat

end

end A361330.P939274376061357745

/-!
# A361331: Smallest index of n-th prime in A361330, or -1 if it does not appear.

The programs for A361331, there is no canonical definition to state claims against.
-/

/-! ## A361331.P16255005195578477616

`A361333(n+1)-1`
-/

namespace A361331.P16255005195578477616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361333 (n + 1) - 1

end

end A361331.P16255005195578477616

/-! ## A361331.P2200520363065317903

`A361332(eq[1, ∑{e}[n, #]])-1`
-/

namespace A361331.P2200520363065317903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361332 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 1

end

end A361331.P2200520363065317903

/-! ## A361331.P12173864945860573368

`record[A361332(n+1)-∑{e}[n+1, #]]`
-/

namespace A361331.P12173864945860573368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361332 (n + 1) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361331.P12173864945860573368

/-! ## A361331.P2886845998037405330

`A361332(A181325(n))-1`
-/

namespace A361331.P2886845998037405330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361332 (A181325 n).toNat - 1

end

end A361331.P2886845998037405330

/-! ## A361331.P14339546909601378134

`A361332(A000040(n+1))-1`
-/

namespace A361331.P14339546909601378134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361332 (A000040 (n + 1)).toNat - 1

end

end A361331.P14339546909601378134

/-!
# A361333: Index of prime(n) in A351495.

The programs for A361333, there is no canonical definition to state claims against.
-/

/-! ## A361333.P16410817295306638321

`A361332(eq[1, ∑{e}[n, #]])`
-/

namespace A361333.P16410817295306638321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361332 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A361333.P16410817295306638321

/-! ## A361333.P9501729724867390688

`record[A361332(n+1)-∑{e}[n+1, #]]+1`
-/

namespace A361333.P9501729724867390688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361332 (n + 1) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A361333.P9501729724867390688

/-! ## A361333.P4642852969578504343

`A361332(A181325(n))`
-/

namespace A361333.P4642852969578504343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361332 (A181325 n).toNat

end

end A361333.P4642852969578504343

/-! ## A361333.P8413490877678456987

`A361332(A390240(n))`
-/

namespace A361333.P8413490877678456987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361332 (A390240 n).toNat

end

end A361333.P8413490877678456987

/-! ## A361333.P2928557457613500183

`A361332(A255483(∑[n]))`
-/

namespace A361333.P2928557457613500183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361332 (A255483 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A361333.P2928557457613500183

/-!
# A361334: Index of 2^n in A351495.

The programs for A361334, there is no canonical definition to state claims against.
-/

/-! ## A361334.P1413734561824891091

`lt[A000120(A351495(n+1)), 2]+1`
-/

namespace A361334.P1413734561824891091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A351495 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A361334.P1413734561824891091

/-!
# A361335: Smallest decimal number containing n palindromic substrings (Version 1). See Comments for precise definition.

The programs for A361335, there is no canonical definition to state claims against.
-/

/-! ## A361335.P6251631349009045734

`A007088(A127106(n+1)%A173944(n+1))`
-/

namespace A361335.P6251631349009045734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A127106 (n + 1)) (A173944 (n + 1))).toNat

end

end A361335.P6251631349009045734

/-! ## A361335.P4754832265825747311

`A007088(A323390(n+2)%A127106(n+1))`
-/

namespace A361335.P4754832265825747311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A323390 (n + 2)) (A127106 (n + 1))).toNat

end

end A361335.P4754832265825747311

/-!
# A361336: Smallest decimal number containing n palindromic substrings (Version 2). See Comments for precise definition.

The programs for A361336, there is no canonical definition to state claims against.
-/

/-! ## A361336.P2872812800235442246

`A318135(A067297(n))+floor(10^(n-1))`
-/

namespace A361336.P2872812800235442246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318135 (A067297 n).toNat + ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A361336.P2872812800235442246

/-!
# A361337: Numbers that reach 0 after a suitable series of split-and-multiply operations (see Comments for precise definition).

The programs for A361337, there is no canonical definition to state claims against.
-/

/-! ## A361337.P18177592773334575348

`comp[A361978(n+1)]`
-/

namespace A361337.P18177592773334575348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A361337.P18177592773334575348

/-!
# A361338: Number of different single-digit numbers that can be reached from n by any permissible sequence of split-and-multiply operations.

The programs for A361338, the canonical program `A361338.P12830044282010602030` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361338 has offset 0).

The definition of A361338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361338.P13924421583798737998

`gcd(A082063(A213217(n)), A348783(n+2))`
-/

namespace A361338.P13924421583798737998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082063 (A213217 n).toNat) (A348783 (n + 2))

end

end A361338.P13924421583798737998

namespace A361338

/-- `gcd(A082063(A213217(n)), A348783(n+2))` -/
def P13924421583798737998.Spec : Prop :=
  ∀ n, (P13924421583798737998.a n : ℤ) = A361338 n

end A361338

/-! ## A361338.P15627565279020422333

`A000009(val(A213217(n), A303579(n+5)))`
-/

namespace A361338.P15627565279020422333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.valuation (A213217 n).toNat (A303579 (n + 5)).toNat)

end

end A361338.P15627565279020422333

namespace A361338

/-- `A000009(val(A213217(n), A303579(n+5)))` -/
def P15627565279020422333.Spec : Prop :=
  ∀ n, P15627565279020422333.a n = A361338 n

end A361338

/-! ## A361338.P13990182028178199319

`A219032(val(A213217(n), A303579(n+5)))`
-/

namespace A361338.P13990182028178199319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219032 (SequenceMachineLib.valuation (A213217 n).toNat (A303579 (n + 5)).toNat)

end

end A361338.P13990182028178199319

namespace A361338

/-- `A219032(val(A213217(n), A303579(n+5)))` -/
def P13990182028178199319.Spec : Prop :=
  ∀ n, P13990182028178199319.a n = A361338 n

end A361338

/-! ## A361338.P10629302344371740006

`A319193(val(A213217(n), A303579(n+5))+1)`
-/

namespace A361338.P10629302344371740006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319193 (SequenceMachineLib.valuation (A213217 n).toNat (A303579 (n + 5)).toNat + 1)

end

end A361338.P10629302344371740006

namespace A361338

/-- `A319193(val(A213217(n), A303579(n+5))+1)` -/
def P10629302344371740006.Spec : Prop :=
  ∀ n, P10629302344371740006.a n = A361338 n

end A361338

/-! ## A361338.P13025056094973674795

`A326036(2*val(A213217(n), A303579(n+5)))`
-/

namespace A361338.P13025056094973674795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326036 (2 * SequenceMachineLib.valuation (A213217 n).toNat (A303579 (n + 5)).toNat)

end

end A361338.P13025056094973674795

namespace A361338

/-- `A326036(2*val(A213217(n), A303579(n+5)))` -/
def P13025056094973674795.Spec : Prop :=
  ∀ n, P13025056094973674795.a n = A361338 n

end A361338

/-! ## A361338.P7663678605645076715

`2^A275730(val(A213217(n), A303579(n+5)))`
-/

namespace A361338.P7663678605645076715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A275730 (SequenceMachineLib.valuation (A213217 n).toNat (A303579 (n + 5)).toNat) : ℤ)

end

end A361338.P7663678605645076715

namespace A361338

/-- `2^A275730(val(A213217(n), A303579(n+5)))` -/
def P7663678605645076715.Spec : Prop :=
  ∀ n, P7663678605645076715.a n = (A361338 n : ℚ)

end A361338

/-! ## A361338.P12830044282010602030

`A122856(C(floor(n/2), 56))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A361338

/-- `A122856(C(floor(n/2), 56))` -/
def P12830044282010602030.Spec : Prop :=
  ∀ n, P12830044282010602030.a n = A361338 n

theorem P12830044282010602030.correct : P12830044282010602030.Spec := by
  intro n
  simp only [A361338]

end A361338

/-! ## A361338.P25070128624099170

`A000035(C(floor(n/2), 56))+1`
-/

namespace A361338.P25070128624099170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.choose ⌊(n : ℚ) / 2⌋.toNat 56) + 1

end

end A361338.P25070128624099170

namespace A361338

/-- `A000035(C(floor(n/2), 56))+1` -/
def P25070128624099170.Spec : Prop :=
  ∀ n, P25070128624099170.a n = A361338 n

end A361338

/-! ## A361338.P15462296393338713557

`A001511(C(floor(n/2), 56)+1)`
-/

namespace A361338.P15462296393338713557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Nat.choose ⌊(n : ℚ) / 2⌋.toNat 56 + 1)

end

end A361338.P15462296393338713557

namespace A361338

/-- `A001511(C(floor(n/2), 56)+1)` -/
def P15462296393338713557.Spec : Prop :=
  ∀ n, P15462296393338713557.a n = A361338 n

end A361338

/-! ## A361338.P2982538921485355510

`A057427(C(floor(n/2), 56))+1`
-/

namespace A361338.P2982538921485355510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose ⌊(n : ℚ) / 2⌋.toNat 56) + 1

end

end A361338.P2982538921485355510

namespace A361338

/-- `A057427(C(floor(n/2), 56))+1` -/
def P2982538921485355510.Spec : Prop :=
  ∀ n, P2982538921485355510.a n = A361338 n

end A361338

/-! ## A361338.P16476619891234031896

`2-A000007(C(floor(n/2), 56))`
-/

namespace A361338.P16476619891234031896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000007 (Nat.choose ⌊(n : ℚ) / 2⌋.toNat 56)

end

end A361338.P16476619891234031896

namespace A361338

/-- `2-A000007(C(floor(n/2), 56))` -/
def P16476619891234031896.Spec : Prop :=
  ∀ n, P16476619891234031896.a n = A361338 n

end A361338

/-! ## A361338.P8888034696775996416

`A271518(C(floor(n/2), 56))%4`
-/

namespace A361338.P8888034696775996416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271518 (Nat.choose ⌊(n : ℚ) / 2⌋.toNat 56)) 4

end

end A361338.P8888034696775996416

namespace A361338

/-- `A271518(C(floor(n/2), 56))%4` -/
def P8888034696775996416.Spec : Prop :=
  ∀ n, P8888034696775996416.a n = A361338 n

end A361338

/-! ## A361338.P2905330645973470206

`A000034(C(ceil(abs((1-n)/2)), 56))`
-/

namespace A361338.P2905330645973470206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Nat.choose ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat 56)

end

end A361338.P2905330645973470206

namespace A361338

/-- `A000034(C(ceil(abs((1-n)/2)), 56))` -/
def P2905330645973470206.Spec : Prop :=
  ∀ n, P2905330645973470206.a n = A361338 n

end A361338

/-! ## A361338.P1106771234897645395

`A007092(C(floor(n/2), 56)+1)%4`
-/

namespace A361338.P1106771234897645395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007092 (Nat.choose ⌊(n : ℚ) / 2⌋.toNat 56 + 1)) 4

end

end A361338.P1106771234897645395

namespace A361338

/-- `A007092(C(floor(n/2), 56)+1)%4` -/
def P1106771234897645395.Spec : Prop :=
  ∀ n, P1106771234897645395.a n = A361338 n

end A361338

/-! ## A361338.P15133753926311588694

`A014150(C(floor(n/2), 56)+2)%4`
-/

namespace A361338.P15133753926311588694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014150 (Nat.choose ⌊(n : ℚ) / 2⌋.toNat 56 + 2)) 4

end

end A361338.P15133753926311588694

namespace A361338

/-- `A014150(C(floor(n/2), 56)+2)%4` -/
def P15133753926311588694.Spec : Prop :=
  ∀ n, P15133753926311588694.a n = A361338 n

end A361338

/-! ## A361338.P11775344199303592983

`floor(A006994(A002113(n+1)+n+1)^(3/14))`
-/

namespace A361338.P11775344199303592983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006994 (A002113 (n + 1) + (n + 1 : ℤ)).toNat : ℝ) ^ ((3 : ℚ) / 14 : ℝ)⌋

end

end A361338.P11775344199303592983

namespace A361338

/-- `floor(A006994(A002113(n+1)+n+1)^(3/14))` -/
def P11775344199303592983.Spec : Prop :=
  ∀ n, P11775344199303592983.a n = A361338 n

end A361338

/-!
# A361341: Numbers k such that A361338(k) = 2.

The programs for A361341, the canonical program `A361341.P8255711080193377984` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361341 has offset 1).

The definition of A361341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1398 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361341.P8255711080193377984

`eq[2, A361338(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A361341

/-- `eq[2, A361338(n)]` -/
def P8255711080193377984.Spec : Prop :=
  ∀ n, (P8255711080193377984.a n : ℤ) = A361341 (n + 1)

theorem P8255711080193377984.correct : P8255711080193377984.Spec := by
  intro n
  simp only [A361341, Nat.add_sub_cancel]

end A361341

/-! ## A361341.P3043616538766056335

`lt[A003415(A001097(3*n+3)), A361338(n)]`
-/

namespace A361341.P3043616538766056335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001097 (3 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361341.P3043616538766056335

namespace A361341

/-- `lt[A003415(A001097(3*n+3)), A361338(n)]` -/
def P3043616538766056335.Spec : Prop :=
  ∀ n, (P3043616538766056335.a n : ℤ) = A361341 (n + 1)

end A361341

/-! ## A361341.P18329330837320167872

`lt[A358847(A046256(n+1)), A361338(n)]`
-/

namespace A361341.P18329330837320167872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358847 (A046256 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361341.P18329330837320167872

namespace A361341

/-- `lt[A358847(A046256(n+1)), A361338(n)]` -/
def P18329330837320167872.Spec : Prop :=
  ∀ n, (P18329330837320167872.a n : ℤ) = A361341 (n + 1)

end A361341

/-! ## A361341.P5340256263894751266

`lt[A162203(A215417(n+1)), A361338(n)]`
-/

namespace A361341.P5340256263894751266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162203 (A215417 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361341.P5340256263894751266

namespace A361341

/-- `lt[A162203(A215417(n+1)), A361338(n)]` -/
def P5340256263894751266.Spec : Prop :=
  ∀ n, (P5340256263894751266.a n : ℤ) = A361341 (n + 1)

end A361341

/-! ## A361341.P15506030233313539308

`lt[A052409(A051865(n+4)), A361338(n)]`
-/

namespace A361341.P15506030233313539308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A051865 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361341.P15506030233313539308

namespace A361341

/-- `lt[A052409(A051865(n+4)), A361338(n)]` -/
def P15506030233313539308.Spec : Prop :=
  ∀ n, (P15506030233313539308.a n : ℤ) = A361341 (n + 1)

end A361341

/-!
# A361342: Numbers k such that A361338(k) = 3.

The programs for A361342, the canonical program `A361342.P1528223230497361746` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361342 has offset 1).

The definition of A361342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361342.P1528223230497361746

`eq[3, A361338(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A361342

/-- `eq[3, A361338(n)]` -/
def P1528223230497361746.Spec : Prop :=
  ∀ n, (P1528223230497361746.a n : ℤ) = A361342 (n + 1)

theorem P1528223230497361746.correct : P1528223230497361746.Spec := by
  intro n
  simp only [A361342, Nat.add_sub_cancel]

end A361342

/-! ## A361342.P14093406802182169133

`lt[A040001(A325686(n)), A361338(n)]`
-/

namespace A361342.P14093406802182169133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A325686 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361342.P14093406802182169133

namespace A361342

/-- `lt[A040001(A325686(n)), A361338(n)]` -/
def P14093406802182169133.Spec : Prop :=
  ∀ n, (P14093406802182169133.a n : ℤ) = A361342 (n + 1)

end A361342

/-! ## A361342.P8395228023597572258

`lt[A365173(A006512(n+1)), A361338(n)]`
-/

namespace A361342.P8395228023597572258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365173 (A006512 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361342.P8395228023597572258

namespace A361342

/-- `lt[A365173(A006512(n+1)), A361338(n)]` -/
def P8395228023597572258.Spec : Prop :=
  ∀ n, (P8395228023597572258.a n : ℤ) = A361342 (n + 1)

end A361342

/-! ## A361342.P16237295612411058028

`lt[A335452(A191913(3*n+2)), A361338(n)]`
-/

namespace A361342.P16237295612411058028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (A191913 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361342.P16237295612411058028

namespace A361342

/-- `lt[A335452(A191913(3*n+2)), A361338(n)]` -/
def P16237295612411058028.Spec : Prop :=
  ∀ n, (P16237295612411058028.a n : ℤ) = A361342 (n + 1)

end A361342

/-!
# A361350: A variant of A359143 which includes the intermediate terms before digits are deleted (see Comments for precise definition).

The programs for A361350, there is no canonical definition to state claims against.
-/

/-! ## A361350.P11334178413256421961

`A361501(A052770(n)+n)`
-/

namespace A361350.P11334178413256421961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361501 (A052770 n + (n : ℤ)).toNat

end

end A361350.P11334178413256421961

/-!
# A361351: Carryless n-th powers of n base 10.

The programs for A361351, there is no canonical definition to state claims against.
-/

/-! ## A361351.P18115579459340485036

`A361390(∑[4*n])`
-/

namespace A361351.P18115579459340485036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361351.P18115579459340485036

/-! ## A361351.P6612577729843848795

`A361390(A046092(n))+C(3, A004771(n))`
-/

namespace A361351.P6612577729843848795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (A046092 n).toNat + (Nat.choose 3 (A004771 n).toNat : ℤ)

end

end A361351.P6612577729843848795

/-! ## A361351.P11809018655260799753

`A361390(A046092(n))^gcd(3, A001316(n))`
-/

namespace A361351.P11809018655260799753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (A046092 n).toNat ^ Int.gcd 3 (A001316 n)

end

end A361351.P11809018655260799753

/-! ## A361351.P13546296261098172041

`A361390(A046092(n))+A000007(3*n+2)`
-/

namespace A361351.P13546296261098172041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (A046092 n).toNat + A000007 (3 * n + 2)

end

end A361351.P13546296261098172041

/-! ## A361351.P8524469445468652306

`A361390(A046092(n))+C(3, A167499(n+5)+2)`
-/

namespace A361351.P8524469445468652306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361390 (A046092 n).toNat + (Nat.choose 3 (A167499 (n + 5) + 2).toNat : ℤ)

end

end A361351.P8524469445468652306

/-!
# A361353: Triangle read by rows: T(n,k) is the number of simple quasi series-parallel matroids on [n] with rank k, 1 <= k <= n.

The programs for A361353, there is no canonical definition to state claims against.
-/

/-! ## A361353.P18374821992269557296

`and(A046817(n+1), A369595(A087903(n+2)))`
-/

namespace A361353.P18374821992269557296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046817 (n + 1)) (A369595 (A087903 (n + 2)).toNat)

end

end A361353.P18374821992269557296

/-! ## A361353.P3592578429875513973

`A302953(2^A221971(n))`
-/

namespace A361353.P3592578429875513973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A221971 n : ℤ))).toNat

end

end A361353.P3592578429875513973

/-! ## A361353.P14565364950396240667

`A211399(n)-A267113(A300913(n))`
-/

namespace A361353.P14565364950396240667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 n - A267113 (A300913 n).toNat

end

end A361353.P14565364950396240667

/-! ## A361353.P17242341217182071958

`A004273(A107131(n)^A325401(n))`
-/

namespace A361353.P17242341217182071958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A107131 n : ℚ) ^ (A325401 n : ℤ))).toNat

end

end A361353.P17242341217182071958

/-! ## A361353.P9022248942782368012

`A244644(A122848(n)^A124767(n))`
-/

namespace A361353.P9022248942782368012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244644 (SequenceMachineLib.roundAway ((A122848 n : ℚ) ^ (A124767 n : ℤ))).toNat

end

end A361353.P9022248942782368012

/-!
# A361354: Number of simple quasi series-parallel matroids on [n].

The programs for A361354, there is no canonical definition to state claims against.
-/

/-! ## A361354.P16456017423389915569

`A115060(n*(a(n-1)+val(n, 2)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A361354.P16456017423389915569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A115060 ((n : ℤ) * (a (n - 1) + (SequenceMachineLib.valuation n 2 : ℤ))).toNat

end

end A361354.P16456017423389915569

/-! ## A361354.P13361416591862966197

`A109950(A000117(n))`
-/

namespace A361354.P13361416591862966197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109950 (A000117 n).toNat

end

end A361354.P13361416591862966197

/-!
# A361356: Number of noncrossing caterpillars with n edges.

The programs for A361356, there is no canonical definition to state claims against.
-/

/-! ## A361356.P4977236617740508901

`(3*n)!/(n!*(2*n+1)!)-A159789(A005815(n))`
-/

namespace A361356.P4977236617740508901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n) : ℚ) / (Nat.factorial n * Nat.factorial (2 * n + 1) : ℚ) - (A159789 (A005815 n).toNat : ℚ)

end

end A361356.P4977236617740508901

/-! ## A361356.P5063457659979419928

`A001764(n)-A159789(A005815(n))`
-/

namespace A361356.P5063457659979419928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n - A159789 (A005815 n).toNat

end

end A361356.P5063457659979419928

/-! ## A361356.P4017138229439265486

`A001764(n)-A284825(A123165(n))`
-/

namespace A361356.P4017138229439265486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n - A284825 ((A123165 n).toNat + 31)

end

end A361356.P4017138229439265486

/-!
# A361357: Triangle read by rows: T(n,k) is the number of noncrossing caterpillars with n edges and diameter k, 0 <= k <= n.

The programs for A361357, there is no canonical definition to state claims against.
-/

/-! ## A361357.P2735544121415383968

`A048793(A212163(n+1)*A299274(n))`
-/

namespace A361357.P2735544121415383968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A212163 (n + 1) * A299274 n).toNat

end

end A361357.P2735544121415383968

/-! ## A361357.P1665761062598223173

`A325678(A238727(n)*A323850(n+2))`
-/

namespace A361357.P1665761062598223173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A238727 n * A323850 (n + 2)).toNat

end

end A361357.P1665761062598223173

/-! ## A361357.P14820920936906350367

`A000120(A144528(n+1)*A213249(n+2))`
-/

namespace A361357.P14820920936906350367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A144528 (n + 1) * A213249 (n + 2)).toNat

end

end A361357.P14820920936906350367

/-! ## A361357.P13060515750717408468

`A000120(A056885(n)*A077221(3*n+2))`
-/

namespace A361357.P13060515750717408468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A056885 n * A077221 (3 * n + 2)).toNat

end

end A361357.P13060515750717408468

/-!
# A361358: Expansion of x*(2 - x)/(1 - 5*x + 3*x^2 - x^3).

The programs for A361358, the canonical program `A361358.P11021203735433193863` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361358 has offset 1).

The definition of A361358 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-x)/(1-5x+3x^2-x^3))` (program `A361358.P11021203735433193863`, by `A361358.P11021203735433193863.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361358.P11021203735433193863

`ogf((2-x)/(1-5x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A361358

/-- `ogf((2-x)/(1-5x+3x^2-x^3))` -/
def P11021203735433193863.Spec : Prop :=
  ∀ n, P11021203735433193863.a n = A361358 (n + 1)

theorem P11021203735433193863.correct : P11021203735433193863.Spec := by
  intro n
  simp only [A361358, Nat.add_sub_cancel]

end A361358

/-! ## A361358.P11701052431691854619

`5*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=9, a(2)=39`
-/

namespace A361358.P11701052431691854619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9, 39] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A361358.P11701052431691854619

namespace A361358

/-- `5*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11701052431691854619.Spec : Prop :=
  ∀ n, P11701052431691854619.a n = A361358 (n + 1)

end A361358

/-! ## A361358.P14874288546013148196

`2*A200676(n+3)-A200676(n+2)`
-/

namespace A361358.P14874288546013148196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200676 (n + 3) - A200676 (n + 2)

end

end A361358.P14874288546013148196

namespace A361358

/-- `2*A200676(n+3)-A200676(n+2)` -/
def P14874288546013148196.Spec : Prop :=
  ∀ n, P14874288546013148196.a n = A361358 (n + 1)

end A361358

/-! ## A361358.P6390329886556641721

`∑[A049086(n)+∑[A049086(n)]]`
-/

namespace A361358.P6390329886556641721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049086 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049086 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361358.P6390329886556641721

namespace A361358

/-- `∑[A049086(n)+∑[A049086(n)]]` -/
def P6390329886556641721.Spec : Prop :=
  ∀ n, P6390329886556641721.a n = A361358 (n + 1)

end A361358

/-!
# A361359: Number of nonequivalent noncrossing caterpillars with n edges up to rotation.

The programs for A361359, there is no canonical definition to state claims against.
-/

/-! ## A361359.P2301913120502387571

`A193584(A045632(n))`
-/

namespace A361359.P2301913120502387571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193584 (A045632 n).toNat

end

end A361359.P2301913120502387571

/-! ## A361359.P8643750857115462423

`A357474(A211768(n))`
-/

namespace A361359.P8643750857115462423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357474 (A211768 n).toNat

end

end A361359.P8643750857115462423

/-! ## A361359.P11203833003068482749

`A157271(A076716(n+1))`
-/

namespace A361359.P11203833003068482749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A076716 (n + 1)).toNat

end

end A361359.P11203833003068482749

/-!
# A361360: Number of nonequivalent noncrossing caterpillars with n edges up to rotation and relection.

The programs for A361360, there is no canonical definition to state claims against.
-/

/-! ## A361360.P4113969494866829930

`A166935(A368983(n))`
-/

namespace A361360.P4113969494866829930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166935 (A368983 n).toNat

end

end A361360.P4113969494866829930

/-! ## A361360.P13772355079869911981

`A162229(∑[A177477(n)])`
-/

namespace A361360.P13772355079869911981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162229 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361360.P13772355079869911981

/-! ## A361360.P17644566736679190081

`A111706(A062416(n+1))`
-/

namespace A361360.P17644566736679190081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111706 (A062416 (n + 1)).toNat

end

end A361360.P17644566736679190081

/-!
# A361362: Number of bicolored cubic graphs on 2n unlabeled vertices.

The programs for A361362, there is no canonical definition to state claims against.
-/

/-! ## A361362.P4099430398859145990

`A325647(a(n-1))` with `a(0)=1, a(1)=0, a(2)=5, a(3)=23`
-/

namespace A361362.P4099430398859145990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5, 23] fun n a =>
  A325647 (a (n - 1)).toNat

end

end A361362.P4099430398859145990

/-!
# A361364: Number of 5-dimensional cubic lattice walks that start and end at origin after 2n steps, not touching origin at intermediate stages.

The programs for A361364, there is no canonical definition to state claims against.
-/

/-! ## A361364.P606326833196720831

`A361397(A055999(n+3))`
-/

namespace A361364.P606326833196720831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361397 (A055999 (n + 3)).toNat

end

end A361364.P606326833196720831

/-! ## A361364.P3411987598673776255

`A361397(eq[5, A025581(n)])`
-/

namespace A361364.P3411987598673776255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361364.P3411987598673776255

/-! ## A361364.P833173134743736819

`A361397(Δ[A026054(n+3)])`
-/

namespace A361364.P833173134743736819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361397 (f1 (n + 1) - f1 n).toNat

end

end A361364.P833173134743736819

/-! ## A361364.P6025380617677629856

`A361397(A055998(n+4)-3)`
-/

namespace A361364.P6025380617677629856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361397 (A055998 (n + 4) - 3).toNat

end

end A361364.P6025380617677629856

/-! ## A361364.P6824435408977867963

`A361397(A167499(n+3)+A005843(n))`
-/

namespace A361364.P6824435408977867963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361397 (A167499 (n + 3) + A005843 n).toNat

end

end A361364.P6824435408977867963

/-!
# A361365: a(n) is the minimum possible sum of 2*n distinct positive numbers in a set, arranged in two subsets of size n each, such that the sum of any one element in each of the two subsets is a prime number.

The programs for A361365, there is no canonical definition to state claims against.
-/

/-! ## A361365.P15931132975476254194

`A131764(n+2)-A374767(A095993(n))`
-/

namespace A361365.P15931132975476254194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131764 (n + 2) - A374767 (A095993 n).toNat

end

end A361365.P15931132975476254194

/-!
# A361373: Number of prime powers p^m <= n such that p | n.

The programs for A361373, the canonical program `A361373.P6551413180594676313` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361373 has offset 1).

The definition of A361373 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361373.P6551413180594676313

`A001222(A064446(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A361373

/-- `A001222(A064446(n+1))` -/
def P6551413180594676313.Spec : Prop :=
  ∀ n, P6551413180594676313.a n = A361373 (n + 1)

theorem P6551413180594676313.correct : P6551413180594676313.Spec := by
  intro n
  simp only [A361373, Nat.add_sub_cancel]

end A361373

/-! ## A361373.P6997260663858241672

`A065515(n+1)-A139555(n+1)`
-/

namespace A361373.P6997260663858241672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - A139555 (n + 1)

end

end A361373.P6997260663858241672

namespace A361373

/-- `A065515(n+1)-A139555(n+1)` -/
def P6997260663858241672.Spec : Prop :=
  ∀ n, P6997260663858241672.a n = A361373 (n + 1)

end A361373

/-! ## A361373.P14837991187352258075

`∑[A010055(n+1)]-A139555(n+1)`
-/

namespace A361373.P14837991187352258075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139555 (n + 1)

end

end A361373.P14837991187352258075

namespace A361373

/-- `∑[A010055(n+1)]-A139555(n+1)` -/
def P14837991187352258075.Spec : Prop :=
  ∀ n, P14837991187352258075.a n = A361373 (n + 1)

end A361373

/-! ## A361373.P7352984349936731412

`A001222(A133910(n+1))+∑{e}[n+1, #]`
-/

namespace A361373.P7352984349936731412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133910 (n + 1)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A361373.P7352984349936731412

namespace A361373

/-- `A001222(A133910(n+1))+∑{e}[n+1, #]` -/
def P7352984349936731412.Spec : Prop :=
  ∀ n, P7352984349936731412.a n = A361373 (n + 1)

end A361373

/-! ## A361373.P8670282358599846464

`A001222(n+1)+A001222(A133910(n+1))`
-/

namespace A361373.P8670282358599846464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A133910 (n + 1)).toNat

end

end A361373.P8670282358599846464

namespace A361373

/-- `A001222(n+1)+A001222(A133910(n+1))` -/
def P8670282358599846464.Spec : Prop :=
  ∀ n, P8670282358599846464.a n = A361373 (n + 1)

end A361373

/-! ## A361373.P3074526271086769067

`A001222((n+1)*A133910(n+1))`
-/

namespace A361373.P3074526271086769067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * A133910 (n + 1)).toNat

end

end A361373.P3074526271086769067

namespace A361373

/-- `A001222((n+1)*A133910(n+1))` -/
def P3074526271086769067.Spec : Prop :=
  ∀ n, P3074526271086769067.a n = A361373 (n + 1)

end A361373

/-! ## A361373.P3132828092601950847

`A001222(A133900(n+1)/(n+1))`
-/

namespace A361373.P3132828092601950847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A133900 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A361373.P3132828092601950847

namespace A361373

/-- `A001222(A133900(n+1)/(n+1))` -/
def P3132828092601950847.Spec : Prop :=
  ∀ n, P3132828092601950847.a n = A361373 (n + 1)

end A361373

/-! ## A361373.P5636607884434523689

`A133911(n+1)-A001222(A325390(n+1))`
-/

namespace A361373.P5636607884434523689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133911 (n + 1) - A001222 (A325390 (n + 1)).toNat

end

end A361373.P5636607884434523689

namespace A361373

/-- `A133911(n+1)-A001222(A325390(n+1))` -/
def P5636607884434523689.Spec : Prop :=
  ∀ n, P5636607884434523689.a n = A361373 (n + 1)

end A361373

/-!
# A361374: Make a square spiral starting with a(1)=1, a(2)=2. Then, each position gets the smallest unused number which is the sum of a path of numbers starting from that position.

The programs for A361374, there is no canonical definition to state claims against.
-/

/-! ## A361374.P13756274843267003370

`A246588(A152977(n))+n`
-/

namespace A361374.P13756274843267003370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246588 (A152977 n).toNat + (n : ℤ)

end

end A361374.P13756274843267003370

/-! ## A361374.P3936385081468143353

`A284562(A122848(n))+n`
-/

namespace A361374.P3936385081468143353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284562 (A122848 n).toNat + (n : ℤ)

end

end A361374.P3936385081468143353

/-! ## A361374.P1158669132720612914

`A152845(A196155(n+1))+n`
-/

namespace A361374.P1158669132720612914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152845 (A196155 (n + 1)).toNat + (n : ℤ)

end

end A361374.P1158669132720612914

/-! ## A361374.P14926270833774057519

`A339890(A113722(n+1))+n`
-/

namespace A361374.P14926270833774057519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (A113722 (n + 1)).toNat + (n : ℤ)

end

end A361374.P14926270833774057519

/-! ## A361374.P7618909475441563224

`A326307(A239016(n+1))+n`
-/

namespace A361374.P7618909475441563224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 (A239016 (n + 1)).toNat + (n : ℤ)

end

end A361374.P7618909475441563224

/-! ## A361374.P15463404294490363589

`A305195(A358193(n+4))+n`
-/

namespace A361374.P15463404294490363589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305195 (A358193 (n + 4)).toNat + (n : ℤ)

end

end A361374.P15463404294490363589

/-! ## A361374.P4471949297568439342

`A025455(A180989(n+1))+n+1`
-/

namespace A361374.P4471949297568439342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A180989 (n + 1)).toNat + (n + 1 : ℤ)

end

end A361374.P4471949297568439342

/-! ## A361374.P12554932935696849737

`A305892(A259683(n+1))+n+1`
-/

namespace A361374.P12554932935696849737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305892 (A259683 (n + 1)).toNat + (n + 1 : ℤ)

end

end A361374.P12554932935696849737

/-! ## A361374.P4869412999156262755

`A056731(A056709(3*n+2))+n`
-/

namespace A361374.P4869412999156262755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056731 (A056709 (3 * n + 2)).toNat + (n : ℤ)

end

end A361374.P4869412999156262755

/-!
# A361375: Expansion of 1/(1 - 9*x/(1 - x))^(1/3).

The programs for A361375, there is no canonical definition to state claims against.
-/

/-! ## A361375.P13498785326248435831

`A067329(∑[A001597(n+1)-1])`
-/

namespace A361375.P13498785326248435831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067329 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361375.P13498785326248435831

/-!
# A361378: Number of musical scales in n tone equal temperament respecting the property that alternate notes are 3 or 4 semitones apart.

The programs for A361378, the canonical program `A361378.P18110292246490034843` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361378 has offset 1).

The definition of A361378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361378.P18110292246490034843

`a(n-2)+a(n-3)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=3, a(5)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A361378

/-- `a(n-2)+a(n-3)+a(n-4)-a(n-6)` -/
def P18110292246490034843.Spec : Prop :=
  ∀ n, P18110292246490034843.a n = A361378 (n + 1)

theorem P18110292246490034843.correct : P18110292246490034843.Spec := by
  intro n
  simp only [A361378, Nat.add_sub_cancel]

end A361378

/-!
# A361380: Sum over the j-th term of the (n-j)-th inverse binomial transform of the Bell numbers (A000110) for all j in [n].

The programs for A361380, there is no canonical definition to state claims against.
-/

/-! ## A361380.P2767593014921442024

`A247911(∑[A057693(n)])`
-/

namespace A361380.P2767593014921442024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361380.P2767593014921442024

/-! ## A361380.P13992341929561837792

`A001462(∑[∑[A330149(n)]])`
-/

namespace A361380.P13992341929561837792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330149 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361380.P13992341929561837792

/-! ## A361380.P3129115921658325581

`∑[A179874(∏[A000009(n)])]`
-/

namespace A361380.P3129115921658325581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179874 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361380.P3129115921658325581

/-!
# A361382: The orders, with repetition, of subset-transitive permutation groups.

The programs for A361382, there is no canonical definition to state claims against.
-/

/-! ## A361382.P4696771487276112168

`record[A008480(A026009(n))]`
-/

namespace A361382.P4696771487276112168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A026009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361382.P4696771487276112168

/-! ## A361382.P12973816738862715732

`record[A008480(A227963(n))]`
-/

namespace A361382.P12973816738862715732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A227963 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361382.P12973816738862715732

/-! ## A361382.P11903136852515243916

`record[A130461(A355809(n))]`
-/

namespace A361382.P11903136852515243916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130461 (A355809 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361382.P11903136852515243916

/-! ## A361382.P17281323967907463549

`record[A178888(A366615(n))]`
-/

namespace A361382.P17281323967907463549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178888 (A366615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361382.P17281323967907463549

/-! ## A361382.P1255419843823833190

`A008480(A002145(n+1)*A126098(n+1))`
-/

namespace A361382.P1255419843823833190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A002145 (n + 1) * A126098 (n + 1)).toNat

end

end A361382.P1255419843823833190

/-!
# A361384: a(n) is the number of distinct prime factors of the n-th unitary harmonic number.

The programs for A361384, there is no canonical definition to state claims against.
-/

/-! ## A361384.P12681684356163420447

`A001221(A006086(n+1))`
-/

namespace A361384.P12681684356163420447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006086 (n + 1)).toNat

end

end A361384.P12681684356163420447

/-! ## A361384.P17200929489598106696

`∑{p}[A006086(n+1), A000188(#)]`
-/

namespace A361384.P17200929489598106696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000188 p

end

end A361384.P17200929489598106696

/-! ## A361384.P16725386668650497271

`∑{p}[A006086(n+1), A001055(#)]`
-/

namespace A361384.P16725386668650497271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001055 p

end

end A361384.P16725386668650497271

/-! ## A361384.P3672711464420136212

`∑{p}[A006086(n+1), A001065(#)]`
-/

namespace A361384.P3672711464420136212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001065 p

end

end A361384.P3672711464420136212

/-! ## A361384.P6501191122262048585

`A384480(A294863(n+1))`
-/

namespace A361384.P6501191122262048585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384480 (A294863 (n + 1)).toNat

end

end A361384.P6501191122262048585

/-!
# A361385: a(n) is the number of "Fermi-Dirac prime" factors (or I-components) of the n-th infinitary harmonic number.

The programs for A361385, there is no canonical definition to state claims against.
-/

/-! ## A361385.P15755721255886113552

`∑{e}[∏{e}[A063947(n+1), #+1], #]`
-/

namespace A361385.P15755721255886113552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063947 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A361385.P15755721255886113552

/-! ## A361385.P4041439114775702016

`∑{e}[A063947(n+1), A000120(#)]`
-/

namespace A361385.P4041439114775702016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (Nat.factorization (f1 n).natAbs p)

end

end A361385.P4041439114775702016

/-! ## A361385.P173854157869835618

`∑{e}[A063947(n+1), A001176(#)]`
-/

namespace A361385.P173854157869835618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001176 (Nat.factorization (f1 n).natAbs p)

end

end A361385.P173854157869835618

/-! ## A361385.P12305481768478973578

`∑{e}[A063947(n+1), A001227(#)]`
-/

namespace A361385.P12305481768478973578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001227 (Nat.factorization (f1 n).natAbs p)

end

end A361385.P12305481768478973578

/-! ## A361385.P2558568001776755698

`∑{e}[A063947(n+1), A002033(#)]`
-/

namespace A361385.P2558568001776755698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002033 (Nat.factorization (f1 n).natAbs p)

end

end A361385.P2558568001776755698

/-!
# A361386: Infinitary arithmetic numbers: numbers for which the arithmetic mean of the infinitary divisors is an integer.

The programs for A361386, there is no canonical definition to state claims against.
-/

/-! ## A361386.P17862298942701526044

`A204123(8*(n+2)²)*A361786(n+1)`
-/

namespace A361386.P17862298942701526044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204123 (8 * (n + 2) ^ 2) * A361786 (n + 1)

end

end A361386.P17862298942701526044

/-! ## A361386.P6214816513584790189

`A090182(A058348(n))*A361786(n+1)`
-/

namespace A361386.P6214816513584790189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (A058348 n).toNat * A361786 (n + 1)

end

end A361386.P6214816513584790189

/-! ## A361386.P1453755448155371123

`A361786(n+1)%A269385(A008778(n))`
-/

namespace A361386.P1453755448155371123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361786 (n + 1)) (A269385 (A008778 n).toNat)

end

end A361386.P1453755448155371123

/-! ## A361386.P9111265033062037365

`or(A353557(A000070(n)), A361786(n+1))`
-/

namespace A361386.P9111265033062037365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A353557 (A000070 n).toNat) (A361786 (n + 1))

end

end A361386.P9111265033062037365

/-! ## A361386.P17362569678720823373

`A296119(A002385(n+5))*A361786(n+1)`
-/

namespace A361386.P17362569678720823373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296119 (A002385 (n + 5)).toNat * A361786 (n + 1)

end

end A361386.P17362569678720823373

/-!
# A361387: Infinitary arithmetic numbers k whose mean infinitary divisor is an infinitary divisor of k.

The programs for A361387, there is no canonical definition to state claims against.
-/

/-! ## A361387.P4875995448939203569

`filter[A361787(n+1), A022932(#)]`
-/

namespace A361387.P4875995448939203569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A361387.P4875995448939203569

/-! ## A361387.P13201974568778793291

`filter[A361787(n+1), A039983(#)]`
-/

namespace A361387.P13201974568778793291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039983 (f1 j).toNat = 1) n)

end

end A361387.P13201974568778793291

/-! ## A361387.P15702967649538649891

`filter[A361787(n+1), A168181(#)]`
-/

namespace A361387.P15702967649538649891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A361387.P15702967649538649891

/-! ## A361387.P13811528255675612713

`filter[A361787(n+1), A179850(#)]`
-/

namespace A361387.P13811528255675612713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179850 (f1 j).toNat = 1) n)

end

end A361387.P13811528255675612713

/-! ## A361387.P12872104105348958395

`filter[A361787(n+1), A188641(#)]`
-/

namespace A361387.P12872104105348958395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A361387.P12872104105348958395

/-!
# A361388: Number of orders of distances to vertices of n-dimensional cube.

The programs for A361388, there is no canonical definition to state claims against.
-/

/-! ## A361388.P3754963803712654995

`2^n*n!*A009997(n)`
-/

namespace A361388.P3754963803712654995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n : ℤ) * A009997 n

end

end A361388.P3754963803712654995

/-! ## A361388.P1471647970331571759

`A000165(n)*A009997(n)`
-/

namespace A361388.P1471647970331571759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A009997 n

end

end A361388.P1471647970331571759

/-!
# A361390: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) is carryless n^k base 10.

The programs for A361390, there is no canonical definition to state claims against.
-/

/-! ## A361390.P11258196370805943819

`A010879(A004248(n))`
-/

namespace A361390.P11258196370805943819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004248 n).toNat

end

end A361390.P11258196370805943819

/-! ## A361390.P14237469079168974527

`A010879(A003992(n)-A055651(n))`
-/

namespace A361390.P14237469079168974527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A003992 n - A055651 n).toNat

end

end A361390.P14237469079168974527

/-! ## A361390.P16399836390517940977

`A010879(A055652(n)-A003992(n))`
-/

namespace A361390.P16399836390517940977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A055652 n - A003992 n).toNat

end

end A361390.P16399836390517940977

/-! ## A361390.P17981866973772326406

`A010879(A059297(n)/A007318(n))`
-/

namespace A361390.P17981866973772326406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.roundAway ((A059297 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A361390.P17981866973772326406

/-! ## A361390.P14191962209604553729

`A010879(A002262(n)^A025581(n))`
-/

namespace A361390.P14191962209604553729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A361390.P14191962209604553729

/-! ## A361390.P8074019555503116848

`A010879(A265583(n+1)/A002260(n+1))`
-/

namespace A361390.P8074019555503116848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.roundAway ((A265583 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ))).toNat

end

end A361390.P8074019555503116848

/-! ## A361390.P1490784496731288892

`A010879(A265583(n+1)/A131818(n+1))`
-/

namespace A361390.P1490784496731288892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.roundAway ((A265583 (n + 1) : ℚ) / (A131818 (n + 1) : ℚ))).toNat

end

end A361390.P1490784496731288892

/-! ## A361390.P9878363355095848698

`A010879(A265583(n+1)/A134868(n+1))`
-/

namespace A361390.P9878363355095848698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.roundAway ((A265583 (n + 1) : ℚ) / (A134868 (n + 1) : ℚ))).toNat

end

end A361390.P9878363355095848698

/-! ## A361390.P4870557610275917327

`A010879(A265583(n+1)/A135223(n+1))`
-/

namespace A361390.P4870557610275917327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.roundAway ((A265583 (n + 1) : ℚ) / (A135223 (n + 1) : ℚ))).toNat

end

end A361390.P4870557610275917327

/-! ## A361390.P8301982284447858283

`A010879(A002262(n)^(A004736(n+1)-1))`
-/

namespace A361390.P8301982284447858283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A004736 (n + 1) - 1 : ℤ))).toNat

end

end A361390.P8301982284447858283

/-!
# A361392: Number of integer partitions of n whose first differences have mean -1.

The programs for A361392, there is no canonical definition to state claims against.
-/

/-! ## A361392.P2744967279969447528

`A382135(A049890(n+2))`
-/

namespace A361392.P2744967279969447528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382135 (A049890 (n + 2)).toNat

end

end A361392.P2744967279969447528

/-! ## A361392.P147491770511137889

`A000009(n)-A038374(A118454(n+1))`
-/

namespace A361392.P147491770511137889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A038374 (A118454 (n + 1)).toNat

end

end A361392.P147491770511137889

/-! ## A361392.P18312205455874583800

`A336469(A127782(n)+A000203(n+1))`
-/

namespace A361392.P18312205455874583800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (A127782 n + A000203 (n + 1)).toNat

end

end A361392.P18312205455874583800

/-! ## A361392.P8318317793866121073

`A317946(A280781(n))+A307409(n+1)`
-/

namespace A361392.P8318317793866121073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317946 (A280781 n).toNat + A307409 (n + 1)

end

end A361392.P8318317793866121073

/-!
# A361393: Positive integers k such that 2*omega(k) > bigomega(k).

The programs for A361393, the canonical program `A361393.P16245078394977915268` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361393 has offset 1).

The definition of A361393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361393.P16245078394977915268

`comp[∪[A361204(n+1), A001014(n)]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A361393

/-- `comp[∪[A361204(n+1), A001014(n)]]` -/
def P16245078394977915268.Spec : Prop :=
  ∀ n, (P16245078394977915268.a n : ℤ) = A361393 (n + 1)

theorem P16245078394977915268.correct : P16245078394977915268.Spec := by
  intro n
  simp only [A361393, Nat.add_sub_cancel]

end A361393

/-! ## A361393.P15633967435145777146

`eq[1, A070012(n+2)]+2`
-/

namespace A361393.P15633967435145777146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A361393.P15633967435145777146

namespace A361393

/-- `eq[1, A070012(n+2)]+2` -/
def P15633967435145777146.Spec : Prop :=
  ∀ n, (P15633967435145777146.a n : ℤ) = A361393 (n + 1)

end A361393

/-! ## A361393.P8863416488557434140

`lt[0, ∑{e}[n, 2-#]]`
-/

namespace A361393.P8863416488557434140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), (2 - (Nat.factorization (f3 n) p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A361393.P8863416488557434140

namespace A361393

/-- `lt[0, ∑{e}[n, 2-#]]` -/
def P8863416488557434140.Spec : Prop :=
  ∀ n, (P8863416488557434140.a n : ℤ) = A361393 (n + 1)

end A361393

/-! ## A361393.P8963562025188248903

`lt[A046660(n+1), A001221(n+1)]+1`
-/

namespace A361393.P8963562025188248903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A361393.P8963562025188248903

namespace A361393

/-- `lt[A046660(n+1), A001221(n+1)]+1` -/
def P8963562025188248903.Spec : Prop :=
  ∀ n, (P8963562025188248903.a n : ℤ) = A361393 (n + 1)

end A361393

/-! ## A361393.P8295672810324030466

`lt[A360616(n+1), A001221(n+1)]+1`
-/

namespace A361393.P8295672810324030466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A361393.P8295672810324030466

namespace A361393

/-- `lt[A360616(n+1), A001221(n+1)]+1` -/
def P8295672810324030466.Spec : Prop :=
  ∀ n, (P8295672810324030466.a n : ℤ) = A361393 (n + 1)

end A361393

/-!
# A361394: Number of integer partitions of n where 2*(number of distinct parts) >= (number of parts).

The programs for A361394, there is no canonical definition to state claims against.
-/

/-! ## A361394.P12740217259158756194

`A239959(n)+A237365(n)`
-/

namespace A361394.P12740217259158756194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239959 n + A237365 n

end

end A361394.P12740217259158756194

/-! ## A361394.P8002183497868383562

`A000041(n)+A239959(n)-A237363(n)`
-/

namespace A361394.P8002183497868383562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A239959 n - A237363 n)

end

end A361394.P8002183497868383562

/-! ## A361394.P4812015633341192987

`A239959(n)+A035444(A008586(n))-A237363(n)`
-/

namespace A361394.P4812015633341192987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239959 n + (A035444 (A008586 n).toNat - A237363 n)

end

end A361394.P4812015633341192987

/-! ## A361394.P3398298163049068274

`A000041(n)-A360254(n)`
-/

namespace A361394.P3398298163049068274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A360254 n

end

end A361394.P3398298163049068274

/-! ## A361394.P9251600816738764717

`sqrt(A001255(n))-A360254(n)`
-/

namespace A361394.P9251600816738764717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A360254 n : ℝ)

end

end A361394.P9251600816738764717

/-! ## A361394.P10771714490637708282

`∑[A002865(n)]-A360254(n)`
-/

namespace A361394.P10771714490637708282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A360254 n

end

end A361394.P10771714490637708282

/-! ## A361394.P7254993367303437022

`A000065(n)+1-A360254(n)`
-/

namespace A361394.P7254993367303437022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A360254 n)

end

end A361394.P7254993367303437022

/-! ## A361394.P2708810290723236029

`A035363(2*n)-A360254(n)`
-/

namespace A361394.P2708810290723236029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A360254 n

end

end A361394.P2708810290723236029

/-! ## A361394.P12486677084413236291

`A100824(2*n)-A360254(n)`
-/

namespace A361394.P12486677084413236291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A360254 n

end

end A361394.P12486677084413236291

/-! ## A361394.P14474329711789046591

`A008284(A001844(n))-A360254(n)`
-/

namespace A361394.P14474329711789046591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A001844 n).toNat - A360254 n

end

end A361394.P14474329711789046591

/-!
# A361395: Positive integers k such that 2*omega(k) >= bigomega(k).

The programs for A361395, there is no canonical definition to state claims against.
-/

/-! ## A361395.P10157868491613796907

`lt[A127708(n+1), A008480(n+1)]+1`
-/

namespace A361395.P10157868491613796907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A361395.P10157868491613796907

/-! ## A361395.P7686364062058965050

`lt[A103279(A000001(n)), A065221(n)]`
-/

namespace A361395.P7686364062058965050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103279 (A000001 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361395.P7686364062058965050

/-! ## A361395.P9051824703956549656

`lt[A219666(A303770(n)), A059270(n)]`
-/

namespace A361395.P9051824703956549656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219666 (A303770 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361395.P9051824703956549656

/-! ## A361395.P3749495368862182375

`lcm(A123271(n+2), A390538(n+1))`
-/

namespace A361395.P3749495368862182375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A390538 (n + 1))

end

end A361395.P3749495368862182375

/-! ## A361395.P824207838790934402

`and(A387410(n+1), A390538(n+1))`
-/

namespace A361395.P824207838790934402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387410 (n + 1)) (A390538 (n + 1))

end

end A361395.P824207838790934402

/-!
# A361396: Integers k such that 28*phi(29*197^3*k) is not a totient number where phi is the totient function.

The programs for A361396, there is no canonical definition to state claims against.
-/

/-! ## A361396.P5354961986071265274

`A023201(A348054(a(n-1)))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6`
-/

namespace A361396.P5354961986071265274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 6] fun n a =>
  A023201 (A348054 (a (n - 1)).toNat).toNat

end

end A361396.P5354961986071265274

/-! ## A361396.P158120901540219722

`A276532(A005255(n))+A007091(n)`
-/

namespace A361396.P158120901540219722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276532 (A005255 n).toNat + A007091 n

end

end A361396.P158120901540219722

/-!
# A361397: Number A(n,k) of k-dimensional cubic lattice walks with 2n steps from origin to origin and avoiding early returns to the origin; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A361397, there is no canonical definition to state claims against.
-/

/-! ## A361397.P10087076378446801604

`A378236(n)%A342087(A231586(n+1))`
-/

namespace A361397.P10087076378446801604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378236 n) (A342087 (A231586 (n + 1)).toNat)

end

end A361397.P10087076378446801604

/-! ## A361397.P5873766125877488871

`A144464(n)*A381566(A010894(3*n+4)+n)`
-/

namespace A361397.P5873766125877488871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n * A381566 (A010894 (3 * n + 4 + 21) + (n : ℤ)).toNat

end

end A361397.P5873766125877488871

/-! ## A361397.P2020555626227555827

`A266213(n)+A184944(A184944(n))`
-/

namespace A361397.P2020555626227555827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 n + A184944 (A184944 n).toNat

end

end A361397.P2020555626227555827

/-! ## A361397.P4631050406531035207

`A266213(n)+A185235(A185235(n))`
-/

namespace A361397.P4631050406531035207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 n + A185235 (A185235 n).toNat

end

end A361397.P4631050406531035207

/-! ## A361397.P2912359926027177262

`A225331(A000837(n))*A316723(n)`
-/

namespace A361397.P2912359926027177262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225331 (A000837 n).toNat * A316723 n

end

end A361397.P2912359926027177262

/-!
# A361399: a(n) is the least k such that the binary expansion of n is a self-infiltration of that of k.

The programs for A361399, there is no canonical definition to state claims against.
-/

/-! ## A361399.P14380080267168834105

`A337222(n)/A052409(A375295(3*n+2))`
-/

namespace A361399.P14380080267168834105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337222 n : ℚ) / (A052409 (A375295 (3 * n + 2)).toNat : ℚ)

end

end A361399.P14380080267168834105

/-! ## A361399.P16914290019620565438

`gcd(A000332(A038754(n)), A337222(n))`
-/

namespace A361399.P16914290019620565438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000332 (A038754 n).toNat) (A337222 n)

end

end A361399.P16914290019620565438

/-! ## A361399.P1458157251145509652

`A337222(n)/A006466(A279510(n+1))`
-/

namespace A361399.P1458157251145509652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337222 n : ℚ) / (A006466 (A279510 (n + 1)).toNat : ℚ)

end

end A361399.P1458157251145509652

/-! ## A361399.P10037538813371173958

`A005384(A063008(3*n+2)-1)%A334033(2*(n+1))`
-/

namespace A361399.P10037538813371173958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005384 (A063008 (3 * n + 2) - 1).toNat) (A334033 (2 * (n + 1)))

end

end A361399.P10037538813371173958

/-! ## A361399.P3954210136465668355

`A005384(A220308(2*n+5)+1)%A334033(2*(n+1))`
-/

namespace A361399.P3954210136465668355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005384 (A220308 (2 * n + 5) + 1).toNat) (A334033 (2 * (n + 1)))

end

end A361399.P3954210136465668355

