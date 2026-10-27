import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A296000: Solution of the complementary equation a(n) = a(0)*b(n-1) + a(1)*b(n-2) + ... + a(n-1)*b(0), where a(0) = 1, a(1) = 3, b(0) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296000, there is no canonical definition to state claims against.
-/

/-! ## A296000.P2494448281931805197

`A008619(A180142(n)+A001047(n))`
-/

namespace A296000.P2494448281931805197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A180142 n + A001047 n).toNat

end

end A296000.P2494448281931805197

/-! ## A296000.P4298502220773918389

`A064455(A180142(n)+A001047(n))`
-/

namespace A296000.P4298502220773918389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (A180142 n + A001047 n).toNat

end

end A296000.P4298502220773918389

/-! ## A296000.P14728923453400493810

`A001281(A296223(n)+A052941(n))`
-/

namespace A296000.P14728923453400493810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A296223 n + A052941 n).toNat

end

end A296000.P14728923453400493810

/-!
# A296001: Solution of the complementary equation a(n) = a(0)*b(n-1) + a(1)*b(n-2) + ... + a(n-1)*b(0), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296001, there is no canonical definition to state claims against.
-/

/-! ## A296001.P11090351461897653515

`A297836(a(n-1))-1` with `a(0)=1, a(1)=2`
-/

namespace A296001.P11090351461897653515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A297836 (a (n - 1)).toNat - 1

end

end A296001.P11090351461897653515

/-! ## A296001.P6262510416957142804

`A298001(a(n-1))-2` with `a(0)=1, a(1)=2`
-/

namespace A296001.P6262510416957142804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A298001 (a (n - 1)).toNat - 2

end

end A296001.P6262510416957142804

/-! ## A296001.P7535376261410723043

`A284678(a(n-1)+1)-2` with `a(0)=1, a(1)=2, a(2)=10`
-/

namespace A296001.P7535376261410723043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10] fun n a =>
  A284678 (a (n - 1) + 1).toNat - 2

end

end A296001.P7535376261410723043

/-!
# A296003: Solution of the complementary equation a(n) = a(0)*b(n-1) + a(1)*b(n-2) + ... + a(n-1)*b(0), where a(0) = 2, a(1) = 4, b(0) = 1, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296003, there is no canonical definition to state claims against.
-/

/-! ## A296003.P3920238465738605703

`2*A171474(∑[floor(n*2^(n-3))]+1+n)`
-/

namespace A296003.P3920238465738605703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171474 (∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)).toNat

end

end A296003.P3920238465738605703

/-! ## A296003.P7987937181227292074

`A080377(A045925(n+1))`
-/

namespace A296003.P7987937181227292074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080377 (A045925 (n + 1)).toNat

end

end A296003.P7987937181227292074

/-!
# A296005: Solution of the complementary equation a(n) = a(0)*b(n-1) + a(1)*b(n-2) + ... + a(n-1)*b(0), where a(0) = 2, a(1) = 3, b(0) = 1, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296005, there is no canonical definition to state claims against.
-/

/-! ## A296005.P5229987875855968479

`A028310(Δ[A278274(n+1)])`
-/

namespace A296005.P5229987875855968479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A296005.P5229987875855968479

/-! ## A296005.P8549339379317767417

`abs(A001489(Δ[A278274(n+1)]))`
-/

namespace A296005.P8549339379317767417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (f1 (n + 1) - f1 n).toNat|

end

end A296005.P8549339379317767417

/-! ## A296005.P18024311909105682845

`abs(A274922(Δ[A278274(n+1)]))`
-/

namespace A296005.P18024311909105682845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274922 (f1 (n + 1) - f1 n).toNat|

end

end A296005.P18024311909105682845

/-! ## A296005.P9748212876235913922

`A023443(Δ[A278274(n+1)]+1)`
-/

namespace A296005.P9748212876235913922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n + 1).toNat

end

end A296005.P9748212876235913922

/-! ## A296005.P9608243356846611943

`A004277(Δ[A278274(n+1)])/2`
-/

namespace A296005.P9608243356846611943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278274 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A296005.P9608243356846611943

/-!
# A296009: Smallest number m such that (2n-1)*m has only odd digits.

The programs for A296009, there is no canonical definition to state claims against.
-/

/-! ## A296009.P9580381529808508087

`A061808(n+1)/(2*(n+1)-1)`
-/

namespace A296009.P9580381529808508087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061808 (n + 1) : ℚ) / ((2 * (n + 1) : ℤ) - 1 : ℚ)

end

end A296009.P9580381529808508087

/-! ## A296009.P9204668788944341122

`A000027(A061808(n+1)/(2*n+1))`
-/

namespace A296009.P9204668788944341122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A061808 (n + 1) : ℚ) / (2 * n + 1 : ℚ))).toNat

end

end A296009.P9204668788944341122

/-! ## A296009.P225759875747352562

`A061808(n+1)/A350536(n)*A350537(n)`
-/

namespace A296009.P225759875747352562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061808 (n + 1) : ℚ) / (A350536 n : ℚ) * (A350537 n : ℚ)

end

end A296009.P225759875747352562

/-! ## A296009.P3044638756568476311

`A004151(A061808(n+1)/A005408(n))`
-/

namespace A296009.P3044638756568476311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway ((A061808 (n + 1) : ℚ) / (A005408 n : ℚ))).toNat

end

end A296009.P3044638756568476311

/-! ## A296009.P7040905589102883648

`A028310(A061808(n+1)/A005408(n))`
-/

namespace A296009.P7040905589102883648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A061808 (n + 1) : ℚ) / (A005408 n : ℚ))).toNat

end

end A296009.P7040905589102883648

/-!
# A296010: Sum of the squares of the number of parts in all partitions of n.

The programs for A296010, there is no canonical definition to state claims against.
-/

/-! ## A296010.P17069882010549660525

`A094533(n)+A006128(n)`
-/

namespace A296010.P17069882010549660525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094533 n + A006128 n

end

end A296010.P17069882010549660525

/-! ## A296010.P10733886374479048687

`A094533(n)+A211978(n)/2`
-/

namespace A296010.P10733886374479048687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094533 n : ℚ) + (A211978 n : ℚ) / 2

end

end A296010.P10733886374479048687

/-! ## A296010.P6055440254275214612

`A093694(n)+A094533(n)-A000041(n)`
-/

namespace A296010.P6055440254275214612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n + (A094533 n - A000041 n)

end

end A296010.P6055440254275214612

/-! ## A296010.P514361261416291813

`A094533(n)-(A006128(n)-A211978(n))`
-/

namespace A296010.P514361261416291813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094533 n - (A006128 n - A211978 n)

end

end A296010.P514361261416291813

/-! ## A296010.P1394689201367552395

`A397079(n)+A066186(n)`
-/

namespace A296010.P1394689201367552395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397079 n + A066186 n

end

end A296010.P1394689201367552395

/-! ## A296010.P12111890558866067547

`A094533(n)+A222048(n)+A222047(n)`
-/

namespace A296010.P12111890558866067547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094533 n + (A222048 n + A222047 n)

end

end A296010.P12111890558866067547

/-! ## A296010.P12872933238115349816

`A210485(A000096(n))+A094533(n)`
-/

namespace A296010.P12872933238115349816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A000096 n).toNat + A094533 n

end

end A296010.P12872933238115349816

/-!
# A296011: Numbers n such that (6k-1) for k=n, n+1, n+2, n+3 are all primes with no primes of the form (6k+1) in between.

The programs for A296011, there is no canonical definition to state claims against.
-/

/-! ## A296011.P3222801646377083673

`A090836(n+1)+1`
-/

namespace A296011.P3222801646377083673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090836 (n + 1) + 1

end

end A296011.P3222801646377083673

/-! ## A296011.P7560062751775674149

`ceil(A090834(n+1)/6)`
-/

namespace A296011.P7560062751775674149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A090834 (n + 1) : ℚ) / 6⌉

end

end A296011.P7560062751775674149

/-! ## A296011.P16765415569303726026

`round(A002483(2*n)+A090834(n+1)/6)`
-/

namespace A296011.P16765415569303726026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002483 (2 * n) : ℚ) + (A090834 (n + 1) : ℚ) / 6)

end

end A296011.P16765415569303726026

/-! ## A296011.P16605157249188116656

`floor(and(1, A056220(n))+A090834(n+1)/6)`
-/

namespace A296011.P16605157249188116656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land 1 (A056220 n) : ℚ) + (A090834 (n + 1) : ℚ) / 6⌋

end

end A296011.P16605157249188116656

/-! ## A296011.P16012954759214766029

`round(A000035(A000035(n)+n)+A090834(n+1)/6)`
-/

namespace A296011.P16012954759214766029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000035 (A000035 n + (n : ℤ)).toNat : ℚ) + (A090834 (n + 1) : ℚ) / 6)

end

end A296011.P16012954759214766029

/-! ## A296011.P14801861834274033777

`round(A090834(n+1)/6)%A233426(n+1)`
-/

namespace A296011.P14801861834274033777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A090834 (n + 1) : ℚ) / 6)) (A233426 (n + 1))

end

end A296011.P14801861834274033777

/-!
# A296012: Primes of the form k + k+1 + k+2 +-1 where k, k+1, and k+2 are all composite numbers.

The programs for A296012, there is no canonical definition to state claims against.
-/

/-! ## A296012.P10684015964260263807

`p?[Δ[A007494(A161844(n+1))]]`
-/

namespace A296012.P10684015964260263807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A161844 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296012.P10684015964260263807

/-! ## A296012.P15233627613110183879

`p?[A003415(A030664(n))+n]`
-/

namespace A296012.P15233627613110183879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A030664 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296012.P15233627613110183879

/-! ## A296012.P11618683688902879305

`p?[A002808(n+1)+A104200(n+4)+A104199(n+4)]`
-/

namespace A296012.P11618683688902879305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A104200 (n + 4) + A104199 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296012.P11618683688902879305

/-! ## A296012.P10876535534456656503

`p?[A002808(n+1)+A104202(n+4)+2*A104199(n+4)]`
-/

namespace A296012.P10876535534456656503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A104202 (n + 4) + 2 * A104199 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296012.P10876535534456656503

/-! ## A296012.P12670733988092363275

`p?[A002808(n+1)+2*A104200(n+4)-A104202(n+4)]`
-/

namespace A296012.P12670733988092363275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (2 * A104200 (n + 4) - A104202 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296012.P12670733988092363275

/-!
# A296013: Number of n X n 0..1 arrays with each 1 adjacent to 1 or 4 king-move neighboring 1's.

The programs for A296013, there is no canonical definition to state claims against.
-/

/-! ## A296013.P4335541620312601634

`A296019(∑[4*n]+1)`
-/

namespace A296013.P4335541620312601634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296013.P4335541620312601634

/-! ## A296013.P14020089232378899514

`A296019(A001844(n))+A184946(n)`
-/

namespace A296013.P14020089232378899514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A001844 n).toNat + A184946 n

end

end A296013.P14020089232378899514

/-! ## A296013.P14004552263032949832

`A036225(n)*A296019(A001844(n))`
-/

namespace A296013.P14004552263032949832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A296019 (A001844 n).toNat

end

end A296013.P14004552263032949832

/-! ## A296013.P2390630556525578965

`or(A000007(n), A296019(A001844(n)))`
-/

namespace A296013.P2390630556525578965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A296019 (A001844 n).toNat)

end

end A296013.P2390630556525578965

/-! ## A296013.P952804812127225073

`or(A016389(n), A296019(A001844(n)))`
-/

namespace A296013.P952804812127225073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 n) (A296019 (A001844 n).toNat)

end

end A296013.P952804812127225073

/-!
# A296014: Number of n X 3 0..1 arrays with each 1 adjacent to 1 or 4 king-move neighboring 1s.

The programs for A296014, there is no canonical definition to state claims against.
-/

/-! ## A296014.P5536501308722285770

`A296019(∑[n+2]+4)`
-/

namespace A296014.P5536501308722285770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296014.P5536501308722285770

/-! ## A296014.P6731482672930504318

`or(A000007(n), A296019(A167614(n+1)))`
-/

namespace A296014.P6731482672930504318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A296019 (A167614 (n + 1)).toNat)

end

end A296014.P6731482672930504318

/-! ## A296014.P3351503353622224456

`or(A000038(n), A296019(A167614(n+1)))`
-/

namespace A296014.P3351503353622224456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A296019 (A167614 (n + 1)).toNat)

end

end A296014.P3351503353622224456

/-! ## A296014.P13074694388906773181

`A296019(A167614(n+1))%A210397(n+1)`
-/

namespace A296014.P13074694388906773181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296019 (A167614 (n + 1)).toNat) (A210397 (n + 1))

end

end A296014.P13074694388906773181

/-! ## A296014.P14132035889434403435

`lcm(A296019(A167614(n+1)), A349340(n+1))`
-/

namespace A296014.P14132035889434403435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A296019 (A167614 (n + 1)).toNat) (A349340 (n + 1))

end

end A296014.P14132035889434403435

/-!
# A296015: Number of n X 4 0..1 arrays with each 1 adjacent to 1 or 4 king-move neighboring 1s.

The programs for A296015, there is no canonical definition to state claims against.
-/

/-! ## A296015.P13230147030139293925

`A296019(A374004(n+1))`
-/

namespace A296015.P13230147030139293925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A374004 (n + 1)).toNat

end

end A296015.P13230147030139293925

/-! ## A296015.P16973213797649905573

`A296019(A145018(n+4))`
-/

namespace A296015.P16973213797649905573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A145018 (n + 4)).toNat

end

end A296015.P16973213797649905573

/-! ## A296015.P15295170244575363367

`A296019(A141214(n)+7)`
-/

namespace A296015.P15295170244575363367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A141214 n + 7).toNat

end

end A296015.P15295170244575363367

/-! ## A296015.P4134069763766485574

`A296019(Δ[A008778(n)]+6)`
-/

namespace A296015.P4134069763766485574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (f1 (n + 1) - f1 n + 6).toNat

end

end A296015.P4134069763766485574

/-! ## A296015.P14089937933793941678

`A296019(A167614(n+2)+1)`
-/

namespace A296015.P14089937933793941678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A167614 (n + 2) + 1).toNat

end

end A296015.P14089937933793941678

/-!
# A296016: Number of nX5 0..1 arrays with each 1 adjacent to 1 or 4 king-move neighboring 1s.

The programs for A296016, there is no canonical definition to state claims against.
-/

/-! ## A296016.P15695354375926922975

`A296019(A374005(n+1))`
-/

namespace A296016.P15695354375926922975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A374005 (n + 1)).toNat

end

end A296016.P15695354375926922975

/-! ## A296016.P13677089292482877317

`A296019(A167499(n+3))`
-/

namespace A296016.P13677089292482877317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A167499 (n + 3)).toNat

end

end A296016.P13677089292482877317

/-! ## A296016.P17698274586146997979

`A296019(A133263(n+4)+3)`
-/

namespace A296016.P17698274586146997979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A133263 (n + 4) + 3).toNat

end

end A296016.P17698274586146997979

/-! ## A296016.P10500489970041290043

`A296019(A000124(n+4)+4)`
-/

namespace A296016.P10500489970041290043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A000124 (n + 4) + 4).toNat

end

end A296016.P10500489970041290043

/-! ## A296016.P8237735239012847386

`A296019(A134869(n+4)+4)`
-/

namespace A296016.P8237735239012847386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A134869 (n + 4) + 4).toNat

end

end A296016.P8237735239012847386

/-!
# A296017: Number of nX6 0..1 arrays with each 1 adjacent to 1 or 4 king-move neighboring 1s.

The programs for A296017, there is no canonical definition to state claims against.
-/

/-! ## A296017.P11520034296417177190

`A296019(A374007(n+1))`
-/

namespace A296017.P11520034296417177190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A374007 (n + 1)).toNat

end

end A296017.P11520034296417177190

/-! ## A296017.P3440449847838917485

`A296019(A000124(n+5)+5)`
-/

namespace A296017.P3440449847838917485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A000124 (n + 5) + 5).toNat

end

end A296017.P3440449847838917485

/-! ## A296017.P6970726411818182618

`A296019(A000096(n+4)+7)`
-/

namespace A296017.P6970726411818182618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A000096 (n + 4) + 7).toNat

end

end A296017.P6970726411818182618

/-! ## A296017.P9903100250046692437

`A296019(A000217(n+5)+6)`
-/

namespace A296017.P9903100250046692437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A000217 (n + 5) + 6).toNat

end

end A296017.P9903100250046692437

/-! ## A296017.P12975291302169630896

`A296019(A161680(n+6)+6)`
-/

namespace A296017.P12975291302169630896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A161680 (n + 6) + 6).toNat

end

end A296017.P12975291302169630896

/-!
# A296018: Number of nX7 0..1 arrays with each 1 adjacent to 1 or 4 king-move neighboring 1s.

The programs for A296018, there is no canonical definition to state claims against.
-/

/-! ## A296018.P6550742746881220863

`A296019(A374008(n+1))`
-/

namespace A296018.P6550742746881220863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A374008 (n + 1)).toNat

end

end A296018.P6550742746881220863

/-! ## A296018.P13207502234990392422

`A296019(eq[8, A131818(n+1)])`
-/

namespace A296018.P13207502234990392422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296018.P13207502234990392422

/-! ## A296018.P1288721456137888186

`A296019(A055999(n+4))`
-/

namespace A296018.P1288721456137888186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (A055999 (n + 4)).toNat

end

end A296018.P1288721456137888186

/-! ## A296018.P13107101398364540083

`A296019(eq[4, A219347(n)])`
-/

namespace A296018.P13107101398364540083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296018.P13107101398364540083

/-! ## A296018.P9303529909974253001

`A296019(eq[6, A193592(n)])`
-/

namespace A296018.P9303529909974253001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296018.P9303529909974253001

/-!
# A296019: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 1 or 4 king-move neighboring 1s.

The programs for A296019, there is no canonical definition to state claims against.
-/

/-! ## A296019.P12785894437786534135

`A184159(A099594(n))+A183442(n+1)`
-/

namespace A296019.P12785894437786534135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184159 (A099594 n).toNat + A183442 (n + 1)

end

end A296019.P12785894437786534135

/-! ## A296019.P11265479403084408192

`A183442(n+1)+A037800(A099594(n)²)`
-/

namespace A296019.P11265479403084408192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (n + 1) + A037800 (A099594 n ^ 2).toNat

end

end A296019.P11265479403084408192

/-! ## A296019.P16060791882932813743

`A183442(n+1)+A037800(A189111(n+1))`
-/

namespace A296019.P16060791882932813743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (n + 1) + A037800 (A189111 (n + 1)).toNat

end

end A296019.P16060791882932813743

/-! ## A296019.P12364973808806528951

`A326291(A036561(n))+A183442(n+1)`
-/

namespace A296019.P12364973808806528951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A036561 n).toNat + A183442 (n + 1)

end

end A296019.P12364973808806528951

/-! ## A296019.P3297711718556406940

`A183442(n+1)+A102683(A000579(n))`
-/

namespace A296019.P3297711718556406940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (n + 1) + A102683 (A000579 n).toNat

end

end A296019.P3297711718556406940

/-!
# A296020: Number of primes of the form 4*k+3 <= 4*n+3.

The programs for A296020, the canonical program `A296020.P7139076584926301415` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296020 has offset 0).

The definition of A296020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296020.P2782712823124352658

`∑[abs(A080909(n))]`
-/

namespace A296020.P2782712823124352658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080909 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P2782712823124352658

namespace A296020

/-- `∑[abs(A080909(n))]` -/
def P2782712823124352658.Spec : Prop :=
  ∀ n, P2782712823124352658.a n = A296020 n

end A296020

/-! ## A296020.P7139076584926301415

`∑[A101264(Δ[n²])]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A296020

/-- `∑[A101264(Δ[n²])]` -/
def P7139076584926301415.Spec : Prop :=
  ∀ n, P7139076584926301415.a n = A296020 n

theorem P7139076584926301415.correct : P7139076584926301415.Spec := by
  intro n
  simp only [A296020]

end A296020

/-! ## A296020.P3240378194843335772

`∑[char[A095278(n+1)]]`
-/

namespace A296020.P3240378194843335772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P3240378194843335772

namespace A296020

/-- `∑[char[A095278(n+1)]]` -/
def P3240378194843335772.Spec : Prop :=
  ∀ n, (P3240378194843335772.a n : ℤ) = A296020 n

end A296020

/-! ## A296020.P12013915469232119173

`∑[A010051(record[xor(3, n)])]`
-/

namespace A296020.P12013915469232119173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P12013915469232119173

namespace A296020

/-- `∑[A010051(record[xor(3, n)])]` -/
def P12013915469232119173.Spec : Prop :=
  ∀ n, P12013915469232119173.a n = A296020 n

end A296020

/-! ## A296020.P10564883769694682318

`∑[A302777(record[xor(3, n)])]`
-/

namespace A296020.P10564883769694682318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P10564883769694682318

namespace A296020

/-- `∑[A302777(record[xor(3, n)])]` -/
def P10564883769694682318.Spec : Prop :=
  ∀ n, P10564883769694682318.a n = A296020 n

end A296020

/-! ## A296020.P16767798557360671046

`∑[-A156707(Δ[n²])]`
-/

namespace A296020.P16767798557360671046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A156707 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P16767798557360671046

namespace A296020

/-- `∑[-A156707(Δ[n²])]` -/
def P16767798557360671046.Spec : Prop :=
  ∀ n, P16767798557360671046.a n = A296020 n

end A296020

/-! ## A296020.P16770927374114253037

`∑[A010051(4*n+3)]`
-/

namespace A296020.P16770927374114253037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P16770927374114253037

namespace A296020

/-- `∑[A010051(4*n+3)]` -/
def P16770927374114253037.Spec : Prop :=
  ∀ n, P16770927374114253037.a n = A296020 n

end A296020

/-! ## A296020.P10308688254115210996

`∑[abs(A156707(2*n+1))]`
-/

namespace A296020.P10308688254115210996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156707 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P10308688254115210996

namespace A296020

/-- `∑[abs(A156707(2*n+1))]` -/
def P10308688254115210996.Spec : Prop :=
  ∀ n, P10308688254115210996.a n = A296020 n

end A296020

/-! ## A296020.P12267934810813029413

`∑[A156707(n+1+n)²]`
-/

namespace A296020.P12267934810813029413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (n + 1 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P12267934810813029413

namespace A296020

/-- `∑[A156707(n+1+n)²]` -/
def P12267934810813029413.Spec : Prop :=
  ∀ n, P12267934810813029413.a n = A296020 n

end A296020

/-! ## A296020.P8633750037883004216

`∑[A089367(2*n+1)/2]`
-/

namespace A296020.P8633750037883004216
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089367 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P8633750037883004216

namespace A296020

/-- `∑[A089367(2*n+1)/2]` -/
def P8633750037883004216.Spec : Prop :=
  ∀ n, P8633750037883004216.a n = (A296020 n : ℚ)

end A296020

/-! ## A296020.P5141045839300567584

`∑[1-A066247(4*n+3)]`
-/

namespace A296020.P5141045839300567584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A066247 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P5141045839300567584

namespace A296020

/-- `∑[1-A066247(4*n+3)]` -/
def P5141045839300567584.Spec : Prop :=
  ∀ n, P5141045839300567584.a n = A296020 n

end A296020

/-! ## A296020.P12416806606477782984

`∑[C(2, A000005(4*n+3))]`
-/

namespace A296020.P12416806606477782984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P12416806606477782984

namespace A296020

/-- `∑[C(2, A000005(4*n+3))]` -/
def P12416806606477782984.Spec : Prop :=
  ∀ n, (P12416806606477782984.a n : ℤ) = A296020 n

end A296020

/-! ## A296020.P15045112627785367384

`∑[char[eq[2, A000005(3*(n+1)+n)]]]`
-/

namespace A296020.P15045112627785367384
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 1) + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P15045112627785367384

namespace A296020

/-- `∑[char[eq[2, A000005(3*(n+1)+n)]]]` -/
def P15045112627785367384.Spec : Prop :=
  ∀ n, (P15045112627785367384.a n : ℤ) = A296020 n

end A296020

/-! ## A296020.P8016852124986539161

`∑[A000045(A089367(2*n+1))]`
-/

namespace A296020.P8016852124986539161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A089367 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P8016852124986539161

namespace A296020

/-- `∑[A000045(A089367(2*n+1))]` -/
def P8016852124986539161.Spec : Prop :=
  ∀ n, P8016852124986539161.a n = A296020 n

end A296020

/-! ## A296020.P7401747000638978925

`A296021(n)-A156749(2*n+1)`
-/

namespace A296020.P7401747000638978925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296021 n - A156749 (2 * n + 1)

end

end A296020.P7401747000638978925

namespace A296020

/-- `A296021(n)-A156749(2*n+1)` -/
def P7401747000638978925.Spec : Prop :=
  ∀ n, P7401747000638978925.a n = A296020 n

end A296020

/-! ## A296020.P2374378285555282325

`∑[A060715(2*(n+1))-A060715(2*n+1)]`
-/

namespace A296020.P2374378285555282325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (2 * (n + 1)) - A060715 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P2374378285555282325

namespace A296020

/-- `∑[A060715(2*(n+1))-A060715(2*n+1)]` -/
def P2374378285555282325.Spec : Prop :=
  ∀ n, P2374378285555282325.a n = A296020 n

end A296020

/-! ## A296020.P13374199460375901257

`∑[A086668(2*n+1)-A305818(2*n+1)]`
-/

namespace A296020.P13374199460375901257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086668 (2 * n + 1) - A305818 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P13374199460375901257

namespace A296020

/-- `∑[A086668(2*n+1)-A305818(2*n+1)]` -/
def P13374199460375901257.Spec : Prop :=
  ∀ n, P13374199460375901257.a n = A296020 n

end A296020

/-! ## A296020.P14939481704724790922

`∑[val(A214834(n+2), 3)]`
-/

namespace A296020.P14939481704724790922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A214834 (n + 2)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P14939481704724790922

namespace A296020

/-- `∑[val(A214834(n+2), 3)]` -/
def P14939481704724790922.Spec : Prop :=
  ∀ n, (P14939481704724790922.a n : ℤ) = A296020 n

end A296020

/-! ## A296020.P10459374064043503742

`∑[round(2/A020481(2*n+3))]`
-/

namespace A296020.P10459374064043503742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (A020481 (2 * n + 3) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P10459374064043503742

namespace A296020

/-- `∑[round(2/A020481(2*n+3))]` -/
def P10459374064043503742.Spec : Prop :=
  ∀ n, P10459374064043503742.a n = A296020 n

end A296020

/-! ## A296020.P1543708779638972130

`∑[A001221(A282026(2*n))]`
-/

namespace A296020.P1543708779638972130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A282026 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296020.P1543708779638972130

namespace A296020

/-- `∑[A001221(A282026(2*n))]` -/
def P1543708779638972130.Spec : Prop :=
  ∀ n, P1543708779638972130.a n = A296020 n

end A296020

/-!
# A296021: Number of primes of the form 4*k+1 <= 4*n+1.

The programs for A296021, the canonical program `A296021.P11845768645576456076` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296021 has offset 0).

The definition of A296021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296021.P8245707814886940517

`∑[char[floor(p?[2*n+2*n+1]/4)]]`
-/

namespace A296021.P8245707814886940517
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℚ) / 4⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P8245707814886940517

namespace A296021

/-- `∑[char[floor(p?[2*n+2*n+1]/4)]]` -/
def P8245707814886940517.Spec : Prop :=
  ∀ n, (P8245707814886940517.a n : ℤ) = A296021 n

end A296021

/-! ## A296021.P11845768645576456076

`∑[A101264(2*n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A296021

/-- `∑[A101264(2*n)]` -/
def P11845768645576456076.Spec : Prop :=
  ∀ n, P11845768645576456076.a n = A296021 n

theorem P11845768645576456076.correct : P11845768645576456076.Spec := by
  intro n
  simp only [A296021]

end A296021

/-! ## A296021.P11237002258622460090

`∑[char[A005098(n+1)]]`
-/

namespace A296021.P11237002258622460090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P11237002258622460090

namespace A296021

/-- `∑[char[A005098(n+1)]]` -/
def P11237002258622460090.Spec : Prop :=
  ∀ n, (P11237002258622460090.a n : ℤ) = A296021 n

end A296021

/-! ## A296021.P4567145657245553371

`∑[A010051(4*n+1)]`
-/

namespace A296021.P4567145657245553371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P4567145657245553371

namespace A296021

/-- `∑[A010051(4*n+1)]` -/
def P4567145657245553371.Spec : Prop :=
  ∀ n, P4567145657245553371.a n = A296021 n

end A296021

/-! ## A296021.P2243586804353059466

`∑[char[comp[A045751(n+1)]]]`
-/

namespace A296021.P2243586804353059466
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045751 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P2243586804353059466

namespace A296021

/-- `∑[char[comp[A045751(n+1)]]]` -/
def P2243586804353059466.Spec : Prop :=
  ∀ n, (P2243586804353059466.a n : ℤ) = A296021 n

end A296021

/-! ## A296021.P11501586412789456388

`∑[1-A005171(4*n+1)]`
-/

namespace A296021.P11501586412789456388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005171 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P11501586412789456388

namespace A296021

/-- `∑[1-A005171(4*n+1)]` -/
def P11501586412789456388.Spec : Prop :=
  ∀ n, P11501586412789456388.a n = A296021 n

end A296021

/-! ## A296021.P13187101446239699293

`∑[char[floor(A002144(n+1)/4)]]`
-/

namespace A296021.P13187101446239699293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002144 (n + 1) : ℚ) / 4⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P13187101446239699293

namespace A296021

/-- `∑[char[floor(A002144(n+1)/4)]]` -/
def P13187101446239699293.Spec : Prop :=
  ∀ n, (P13187101446239699293.a n : ℤ) = A296021 n

end A296021

/-! ## A296021.P14723482694982343919

`∑[char[eq[2, A000005(4*n+1)]]]`
-/

namespace A296021.P14723482694982343919
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P14723482694982343919

namespace A296021

/-- `∑[char[eq[2, A000005(4*n+1)]]]` -/
def P14723482694982343919.Spec : Prop :=
  ∀ n, (P14723482694982343919.a n : ℤ) = A296021 n

end A296021

/-! ## A296021.P7352908149668874000

`A101264(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A296021.P7352908149668874000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A101264 (n + n) + a (n - 1)

end

end A296021.P7352908149668874000

namespace A296021

/-- `A101264(n+n)+a(n-1)` -/
def P7352908149668874000.Spec : Prop :=
  ∀ n, P7352908149668874000.a n = A296021 n

end A296021

/-! ## A296021.P6732030079777561353

`∑[A304438(2*n+2*n+1)]`
-/

namespace A296021.P6732030079777561353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P6732030079777561353

namespace A296021

/-- `∑[A304438(2*n+2*n+1)]` -/
def P6732030079777561353.Spec : Prop :=
  ∀ n, P6732030079777561353.a n = A296021 n

end A296021

/-! ## A296021.P16444775174629276554

`∑[A323153(2*n+2*n+1)]`
-/

namespace A296021.P16444775174629276554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323153 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P16444775174629276554

namespace A296021

/-- `∑[A323153(2*n+2*n+1)]` -/
def P16444775174629276554.Spec : Prop :=
  ∀ n, P16444775174629276554.a n = A296021 n

end A296021

/-! ## A296021.P11177097216669636298

`∑[A353670(2*n+2*n+1)]`
-/

namespace A296021.P11177097216669636298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P11177097216669636298

namespace A296021

/-- `∑[A353670(2*n+2*n+1)]` -/
def P11177097216669636298.Spec : Prop :=
  ∀ n, P11177097216669636298.a n = A296021 n

end A296021

/-! ## A296021.P9048225132373519138

`∑[char[lt[A000005(4*(n+1)+1), 3]+1]]`
-/

namespace A296021.P9048225132373519138
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * (n + 1) + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P9048225132373519138

namespace A296021

/-- `∑[char[lt[A000005(4*(n+1)+1), 3]+1]]` -/
def P9048225132373519138.Spec : Prop :=
  ∀ n, (P9048225132373519138.a n : ℤ) = A296021 n

end A296021

/-! ## A296021.P10257698621938833493

`∑[C(2, A000005(2*n+2*n+1))]-2`
-/

namespace A296021.P10257698621938833493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (2 * n + (2 * n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A296021.P10257698621938833493

namespace A296021

/-- `∑[C(2, A000005(2*n+2*n+1))]-2` -/
def P10257698621938833493.Spec : Prop :=
  ∀ n, P10257698621938833493.a n = A296021 n

end A296021

/-! ## A296021.P11224142662730690546

`∑[val(A289147(∑{e}[5*n+3*n+2, #]), 34)]`
-/

namespace A296021.P11224142662730690546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + (3 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A289147 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat 34

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P11224142662730690546

namespace A296021

/-- `∑[val(A289147(∑{e}[5*n+3*n+2, #]), 34)]` -/
def P11224142662730690546.Spec : Prop :=
  ∀ n, (P11224142662730690546.a n : ℤ) = A296021 n

end A296021

/-! ## A296021.P2126652796166251664

`A267097(A000720(4*(n+1)))`
-/

namespace A296021.P2126652796166251664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267097 (A000720 (4 * (n + 1))).toNat

end

end A296021.P2126652796166251664

namespace A296021

/-- `A267097(A000720(4*(n+1)))` -/
def P2126652796166251664.Spec : Prop :=
  ∀ n, P2126652796166251664.a n = A296021 n

end A296021

/-! ## A296021.P17472446616029030932

`A296020(n)+A156749(2*n+1)`
-/

namespace A296021.P17472446616029030932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296020 n + A156749 (2 * n + 1)

end

end A296021.P17472446616029030932

namespace A296021

/-- `A296020(n)+A156749(2*n+1)` -/
def P17472446616029030932.Spec : Prop :=
  ∀ n, P17472446616029030932.a n = A296021 n

end A296021

/-! ## A296021.P14887999141431434476

`∑[∑{d}[A001222(4*n+1), A008683(#)]]`
-/

namespace A296021.P14887999141431434476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A008683 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P14887999141431434476

namespace A296021

/-- `∑[∑{d}[A001222(4*n+1), A008683(#)]]` -/
def P14887999141431434476.Spec : Prop :=
  ∀ n, P14887999141431434476.a n = A296021 n

end A296021

/-! ## A296021.P12635073271360631452

`∑[A156707(2*(n+1))]-A156707(2*(n+1))`
-/

namespace A296021.P12635073271360631452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A156707 (2 * (n + 1))

end

end A296021.P12635073271360631452

namespace A296021

/-- `∑[A156707(2*(n+1))]-A156707(2*(n+1))` -/
def P12635073271360631452.Spec : Prop :=
  ∀ n, P12635073271360631452.a n = A296021 n

end A296021

/-! ## A296021.P639057183387280045

`∑[A211173(2*n)]`
-/

namespace A296021.P639057183387280045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296021.P639057183387280045

namespace A296021

/-- `∑[A211173(2*n)]` -/
def P639057183387280045.Spec : Prop :=
  ∀ n, P639057183387280045.a n = A296021 n

end A296021

/-!
# A296022: Numbers n such that there are precisely 2 groups of orders n, n + 1 and n + 2.

The programs for A296022, there is no canonical definition to state claims against.
-/

/-! ## A296022.P309014205394731166

`∩[A295230(n+1)-1, A295230(n+1)]`
-/

namespace A296022.P309014205394731166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295230 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296022.P309014205394731166

/-! ## A296022.P3983779672865192107

`A295230(eq[1, A295230(n+2)-A295230(n+1)]+1)`
-/

namespace A296022.P3983779672865192107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295230 (n + 2) - A295230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A296022.P3983779672865192107

/-! ## A296022.P7714206304792409812

`∩[A295230(n+1), A023443(A295230(n+1))]`
-/

namespace A296022.P7714206304792409812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A295230 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296022.P7714206304792409812

/-!
# A296023: Numbers n such that there is precisely 1 group of order n and 2 of order n + 1.

The programs for A296023, the canonical program `A296023.P3653154413069258971` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296023 has offset 1).

The definition of A296023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296023.P3653154413069258971

`2*eq[gcd(2*n+1, A000010(2*n+1)), A054024(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A296023

/-- `2*eq[gcd(2*n+1, A000010(2*n+1)), A054024(n+1)]+1` -/
def P3653154413069258971.Spec : Prop :=
  ∀ n, (P3653154413069258971.a n : ℤ) = A296023 (n + 1)

theorem P3653154413069258971.correct : P3653154413069258971.Spec := by
  intro n
  simp only [A296023, Nat.add_sub_cancel]

end A296023

/-! ## A296023.P8627493188317688018

`∩[A003277(n+1), A186621(n+1)]`
-/

namespace A296023.P8627493188317688018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296023.P8627493188317688018

namespace A296023

/-- `∩[A003277(n+1), A186621(n+1)]` -/
def P8627493188317688018.Spec : Prop :=
  ∀ n, (P8627493188317688018.a n : ℤ) = A296023 (n + 1)

end A296023

/-! ## A296023.P6692079529957261215

`∩[A001358(n+1)-1, A003277(n+1)]`
-/

namespace A296023.P6692079529957261215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296023.P6692079529957261215

namespace A296023

/-- `∩[A001358(n+1)-1, A003277(n+1)]` -/
def P6692079529957261215.Spec : Prop :=
  ∀ n, (P6692079529957261215.a n : ℤ) = A296023 (n + 1)

end A296023

/-! ## A296023.P2940010679025263040

`record[A109395(A100484(n+1)-1)]`
-/

namespace A296023.P2940010679025263040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A100484 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296023.P2940010679025263040

namespace A296023

/-- `record[A109395(A100484(n+1)-1)]` -/
def P2940010679025263040.Spec : Prop :=
  ∀ n, P2940010679025263040.a n = A296023 (n + 1)

end A296023

/-! ## A296023.P16766961636518633852

`record[A109395(2*(A000040(n+1)-1)+1)]`
-/

namespace A296023.P16766961636518633852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (2 * (A000040 (n + 1) - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296023.P16766961636518633852

namespace A296023

/-- `record[A109395(2*(A000040(n+1)-1)+1)]` -/
def P16766961636518633852.Spec : Prop :=
  ∀ n, P16766961636518633852.a n = A296023 (n + 1)

end A296023

/-! ## A296023.P6428849631801828199

`record[A109395(2*(A007920(n+1)+n)+1)]`
-/

namespace A296023.P6428849631801828199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (2 * (A007920 (n + 1) + (n : ℤ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296023.P6428849631801828199

namespace A296023

/-- `record[A109395(2*(A007920(n+1)+n)+1)]` -/
def P6428849631801828199.Spec : Prop :=
  ∀ n, P6428849631801828199.a n = A296023 (n + 1)

end A296023

/-! ## A296023.P10207302101192822849

`A373648(n+1)+1`
-/

namespace A296023.P10207302101192822849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373648 (n + 1) + 1

end

end A296023.P10207302101192822849

namespace A296023

/-- `A373648(n+1)+1` -/
def P10207302101192822849.Spec : Prop :=
  ∀ n, P10207302101192822849.a n = A296023 (n + 1)

end A296023

/-! ## A296023.P13805693928722559598

`A004442(A373648(n+1))`
-/

namespace A296023.P13805693928722559598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A373648 (n + 1)).toNat

end

end A296023.P13805693928722559598

namespace A296023

/-- `A004442(A373648(n+1))` -/
def P13805693928722559598.Spec : Prop :=
  ∀ n, P13805693928722559598.a n = A296023 (n + 1)

end A296023

/-! ## A296023.P7010648765766423338

`filter[A176629(n+1), A297086(#)]`
-/

namespace A296023.P7010648765766423338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A296023.P7010648765766423338

namespace A296023

/-- `filter[A176629(n+1), A297086(#)]` -/
def P7010648765766423338.Spec : Prop :=
  ∀ n, P7010648765766423338.a n = A296023 (n + 1)

end A296023

/-! ## A296023.P18143392579452763829

`filter[A186621(n+1), A297086(#)]`
-/

namespace A296023.P18143392579452763829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A296023.P18143392579452763829

namespace A296023

/-- `filter[A186621(n+1), A297086(#)]` -/
def P18143392579452763829.Spec : Prop :=
  ∀ n, P18143392579452763829.a n = A296023 (n + 1)

end A296023

/-! ## A296023.P10450085836827902021

`filter[A033945(n+2), A297086(#)]`
-/

namespace A296023.P10450085836827902021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A296023.P10450085836827902021

namespace A296023

/-- `filter[A033945(n+2), A297086(#)]` -/
def P10450085836827902021.Spec : Prop :=
  ∀ n, P10450085836827902021.a n = A296023 (n + 1)

end A296023

/-! ## A296023.P3795793802842776394

`filter[A076274(n+2), A297086(#)]`
-/

namespace A296023.P3795793802842776394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A296023.P3795793802842776394

namespace A296023

/-- `filter[A076274(n+2), A297086(#)]` -/
def P3795793802842776394.Spec : Prop :=
  ∀ n, P3795793802842776394.a n = A296023 (n + 1)

end A296023

/-! ## A296023.P1930666073593560548

`filter[A195896(n+3), A297086(#)]`
-/

namespace A296023.P1930666073593560548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195896 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A296023.P1930666073593560548

namespace A296023

/-- `filter[A195896(n+3), A297086(#)]` -/
def P1930666073593560548.Spec : Prop :=
  ∀ n, P1930666073593560548.a n = A296023 (n + 1)

end A296023

/-! ## A296023.P1281060389969717102

`record[A074792(A074792(2*n+1))]`
-/

namespace A296023.P1281060389969717102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (A074792 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296023.P1281060389969717102

namespace A296023

/-- `record[A074792(A074792(2*n+1))]` -/
def P1281060389969717102.Spec : Prop :=
  ∀ n, P1281060389969717102.a n = A296023 (n + 1)

end A296023

/-! ## A296023.P1485518832569912666

`record[A195637(2*A000040(n+1)-1)]`
-/

namespace A296023.P1485518832569912666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195637 (2 * A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296023.P1485518832569912666

namespace A296023

/-- `record[A195637(2*A000040(n+1)-1)]` -/
def P1485518832569912666.Spec : Prop :=
  ∀ n, P1485518832569912666.a n = A296023 (n + 1)

end A296023

/-!
# A296024: Numbers n such that there is precisely 1 group of order n, 2 of order n + 1 and 3 of order n + 2.

The programs for A296024, there is no canonical definition to state claims against.
-/

/-! ## A296024.P12115995762272769699

`A373649(n+1)+1`
-/

namespace A296024.P12115995762272769699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373649 (n + 1) + 1

end

end A296024.P12115995762272769699

/-! ## A296024.P10055110328394944058

`xor(1, A373649(A028242(2*n)))`
-/

namespace A296024.P10055110328394944058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A373649 (A028242 (2 * n)).toNat)

end

end A296024.P10055110328394944058

/-! ## A296024.P14311928029811060661

`xor(1, A373649(A110514(2*n)))`
-/

namespace A296024.P14311928029811060661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A373649 (A110514 (2 * n)).toNat)

end

end A296024.P14311928029811060661

/-! ## A296024.P1806112378952623132

`∩[A055561(n+1)-2, A296023(n+1)]`
-/

namespace A296024.P1806112378952623132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055561 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296024.P1806112378952623132

/-! ## A296024.P3738016845690020718

`A141310(A373649(n+1))`
-/

namespace A296024.P3738016845690020718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A373649 (n + 1)).toNat

end

end A296024.P3738016845690020718

/-!
# A296026: Numbers n such that there are precisely 2 groups of order n and 4 of order n + 1.

The programs for A296026, there is no canonical definition to state claims against.
-/

/-! ## A296026.P6304309085291295776

`∩[A054395(n+1), A054396(n+1)-1]`
-/

namespace A296026.P6304309085291295776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054396 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296026.P6304309085291295776

/-! ## A296026.P12815962697277152992

`∩[A054395(n+1), A023443(A054396(n+1))]`
-/

namespace A296026.P12815962697277152992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054396 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296026.P12815962697277152992

/-! ## A296026.P6115964200857252762

`∩[A233583(A054396(n+1)), A054395(n+5)]`
-/

namespace A296026.P6115964200857252762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A054396 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296026.P6115964200857252762

/-! ## A296026.P496909934657843480

`eq[A000001(n)+2, A201733(n+1)]`
-/

namespace A296026.P496909934657843480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296026.P496909934657843480

/-!
# A296028: Characteristic function of primes in the nonmultiples of 3.

The programs for A296028, the canonical program `A296028.P12946976151068972865` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296028 has offset 1).

The definition of A296028 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A296028.P12946976151068972865

`A010051(floor((3*(n+1)-1)/2))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A296028

/-- `A010051(floor((3*(n+1)-1)/2))` -/
def P12946976151068972865.Spec : Prop :=
  ∀ n, P12946976151068972865.a n = A296028 (n + 1)

theorem P12946976151068972865.correct : P12946976151068972865.Spec := by
  intro n
  simp only [A296028, Nat.add_sub_cancel]

end A296028

/-! ## A296028.P8042789641866639360

`A064911(2*comp[3*n])`
-/

namespace A296028.P8042789641866639360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A296028.P8042789641866639360

namespace A296028

/-- `A064911(2*comp[3*n])` -/
def P8042789641866639360.Spec : Prop :=
  ∀ n, P8042789641866639360.a n = A296028 (n + 1)

end A296028

/-! ## A296028.P1324054074061725846

`A129950(floor(n/2)+n+1)²`
-/

namespace A296028.P1324054074061725846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (⌊(n : ℚ) / 2⌋ + (n + 1 : ℤ)).toNat ^ 2

end

end A296028.P1324054074061725846

namespace A296028

/-- `A129950(floor(n/2)+n+1)²` -/
def P1324054074061725846.Spec : Prop :=
  ∀ n, P1324054074061725846.a n = A296028 (n + 1)

end A296028

/-! ## A296028.P11640486705444742944

`char[ceil(2*A000040(n+1)/3)-1]`
-/

namespace A296028.P11640486705444742944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A000040 (n + 1) : ℚ) / 3⌉ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296028.P11640486705444742944

namespace A296028

/-- `char[ceil(2*A000040(n+1)/3)-1]` -/
def P11640486705444742944.Spec : Prop :=
  ∀ n, (P11640486705444742944.a n : ℤ) = A296028 (n + 1)

end A296028

/-! ## A296028.P4391328423202402803

`char[ceil(2*A006530(n+2)/3)-1]`
-/

namespace A296028.P4391328423202402803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((A006530 (n + 2) : ℚ) / 3)⌉ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296028.P4391328423202402803

namespace A296028

/-- `char[ceil(2*A006530(n+2)/3)-1]` -/
def P4391328423202402803.Spec : Prop :=
  ∀ n, (P4391328423202402803.a n : ℤ) = A296028 (n + 1)

end A296028

/-! ## A296028.P8750632105715314359

`char[lt[A001222(floor((n+3)/2)+n+1), 2]+1]`
-/

namespace A296028.P8750632105715314359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (⌊(n + 3 : ℚ) / 2⌋ + (n + 1 : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A296028.P8750632105715314359

namespace A296028

/-- `char[lt[A001222(floor((n+3)/2)+n+1), 2]+1]` -/
def P8750632105715314359.Spec : Prop :=
  ∀ n, (P8750632105715314359.a n : ℤ) = A296028 (n + 1)

end A296028

/-! ## A296028.P5547754510375656529

`1-A005171(A008619(n)+n)`
-/

namespace A296028.P5547754510375656529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005171 (A008619 n + (n : ℤ)).toNat

end

end A296028.P5547754510375656529

namespace A296028

/-- `1-A005171(A008619(n)+n)` -/
def P5547754510375656529.Spec : Prop :=
  ∀ n, P5547754510375656529.a n = A296028 (n + 1)

end A296028

/-! ## A296028.P13978810083624969454

`val(A000040(A000005(comp[3*n])), 3)`
-/

namespace A296028.P13978810083624969454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat).toNat 3

end

end A296028.P13978810083624969454

namespace A296028

/-- `val(A000040(A000005(comp[3*n])), 3)` -/
def P13978810083624969454.Spec : Prop :=
  ∀ n, (P13978810083624969454.a n : ℤ) = A296028 (n + 1)

end A296028

/-! ## A296028.P7443864204263520550

`∑{d}[A001222(comp[3*n]), A008683(#)]`
-/

namespace A296028.P7443864204263520550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A296028.P7443864204263520550

namespace A296028

/-- `∑{d}[A001222(comp[3*n]), A008683(#)]` -/
def P7443864204263520550.Spec : Prop :=
  ∀ n, P7443864204263520550.a n = A296028 (n + 1)

end A296028

/-! ## A296028.P18214928317724788018

`char[ceil(2*A151800(A245092(n))/3)-1]`
-/

namespace A296028.P18214928317724788018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((A151800 (A245092 n).toNat : ℚ) / 3)⌉ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296028.P18214928317724788018

namespace A296028

/-- `char[ceil(2*A151800(A245092(n))/3)-1]` -/
def P18214928317724788018.Spec : Prop :=
  ∀ n, (P18214928317724788018.a n : ℤ) = A296028 (n + 1)

end A296028

/-! ## A296028.P12744866158063354179

`val(A211776(comp[3*n])%3+2, 4)`
-/

namespace A296028.P12744866158063354179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.tmod (A211776 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 3 + 2).toNat 4

end

end A296028.P12744866158063354179

namespace A296028

/-- `val(A211776(comp[3*n])%3+2, 4)` -/
def P12744866158063354179.Spec : Prop :=
  ∀ n, (P12744866158063354179.a n : ℤ) = A296028 (n + 1)

end A296028

/-! ## A296028.P17285952568816613213

`A001222(A089026(floor(n/2)+n+1))`
-/

namespace A296028.P17285952568816613213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A089026 (⌊(n : ℚ) / 2⌋ + (n + 1 : ℤ)).toNat).toNat

end

end A296028.P17285952568816613213

namespace A296028

/-- `A001222(A089026(floor(n/2)+n+1))` -/
def P17285952568816613213.Spec : Prop :=
  ∀ n, P17285952568816613213.a n = A296028 (n + 1)

end A296028

/-! ## A296028.P311347359523145915

`∏{e}[A000203(A089026(comp[3*n]))-1, #+1]-1`
-/

namespace A296028.P311347359523145915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A089026 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - 1

end

end A296028.P311347359523145915

namespace A296028

/-- `∏{e}[A000203(A089026(comp[3*n]))-1, #+1]-1` -/
def P311347359523145915.Spec : Prop :=
  ∀ n, P311347359523145915.a n = A296028 (n + 1)

end A296028

/-! ## A296028.P7981477764076939440

`char[A131737(p?[2*n+1])]`
-/

namespace A296028.P7981477764076939440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296028.P7981477764076939440

namespace A296028

/-- `char[A131737(p?[2*n+1])]` -/
def P7981477764076939440.Spec : Prop :=
  ∀ n, (P7981477764076939440.a n : ℤ) = A296028 (n + 1)

end A296028

/-! ## A296028.P17900312226007618468

`A080545(A133223(n+1))`
-/

namespace A296028.P17900312226007618468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (A133223 (n + 1)).toNat

end

end A296028.P17900312226007618468

namespace A296028

/-- `A080545(A133223(n+1))` -/
def P17900312226007618468.Spec : Prop :=
  ∀ n, P17900312226007618468.a n = A296028 (n + 1)

end A296028

/-! ## A296028.P12882276061931284130

`A101637(A259751(n+1))`
-/

namespace A296028.P12882276061931284130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A259751 (n + 1)).toNat

end

end A296028.P12882276061931284130

namespace A296028

/-- `A101637(A259751(n+1))` -/
def P12882276061931284130.Spec : Prop :=
  ∀ n, P12882276061931284130.a n = A296028 (n + 1)

end A296028

/-! ## A296028.P10186123138608867817

`A006368(2*n+1)-A014684(A006368(2*n+1))`
-/

namespace A296028.P10186123138608867817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (2 * n + 1) - A014684 (A006368 (2 * n + 1)).toNat

end

end A296028.P10186123138608867817

namespace A296028

/-- `A006368(2*n+1)-A014684(A006368(2*n+1))` -/
def P10186123138608867817.Spec : Prop :=
  ∀ n, P10186123138608867817.a n = A296028 (n + 1)

end A296028

/-! ## A296028.P4548976818541945572

`A303337(A005004(n+2))`
-/

namespace A296028.P4548976818541945572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303337 (A005004 (n + 2)).toNat

end

end A296028.P4548976818541945572

namespace A296028

/-- `A303337(A005004(n+2))` -/
def P4548976818541945572.Spec : Prop :=
  ∀ n, P4548976818541945572.a n = A296028 (n + 1)

end A296028

/-! ## A296028.P15983402972277721540

`1-A005171(A008619(3*n))`
-/

namespace A296028.P15983402972277721540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005171 (A008619 (3 * n)).toNat

end

end A296028.P15983402972277721540

namespace A296028

/-- `1-A005171(A008619(3*n))` -/
def P15983402972277721540.Spec : Prop :=
  ∀ n, P15983402972277721540.a n = A296028 (n + 1)

end A296028

/-!
# A296030: Pairs of coordinates for successive integers in the square spiral (counterclockwise).

The programs for A296030, there is no canonical definition to state claims against.
-/

/-! ## A296030.P4634478229667127687

`A343640(A001651(n+1)+80)`
-/

namespace A296030.P4634478229667127687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343640 (A001651 (n + 1) + 80).toNat

end

end A296030.P4634478229667127687

/-! ## A296030.P9961952762850718099

`A008683(A298976(n+1)+A270613(n+1))`
-/

namespace A296030.P9961952762850718099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A298976 (n + 1) + A270613 (n + 1)).toNat

end

end A296030.P9961952762850718099

/-! ## A296030.P15828361400486039016

`A099859(A099855(2*n)%A099902(n))`
-/

namespace A296030.P15828361400486039016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099859 (Int.tmod (A099855 (2 * n)) (A099902 n)).toNat

end

end A296030.P15828361400486039016

/-! ## A296030.P6083050757455217813

`A318950(n+1)+A074290(A324770(n+2))`
-/

namespace A296030.P6083050757455217813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318950 (n + 1) + A074290 (A324770 (n + 2)).toNat

end

end A296030.P6083050757455217813

/-! ## A296030.P2663090575468475662

`A238468(A003402(3*n)-A005940(3*n+1))`
-/

namespace A296030.P2663090575468475662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238468 (A003402 (3 * n) - A005940 (3 * n + 1)).toNat

end

end A296030.P2663090575468475662

/-!
# A296031: Numbers k such that 2^(k-1) - k is prime.

The programs for A296031, there is no canonical definition to state claims against.
-/

/-! ## A296031.P6916516903765909996

`A099439(n+1)+A010052(A093391(n))`
-/

namespace A296031.P6916516903765909996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099439 (n + 1) + A010052 (A093391 n).toNat

end

end A296031.P6916516903765909996

/-! ## A296031.P18273054889894496918

`A169975(A169975(n))+A099439(n+1)`
-/

namespace A296031.P18273054889894496918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 (A169975 n).toNat + A099439 (n + 1)

end

end A296031.P18273054889894496918

/-! ## A296031.P9072416271657878668

`A164555(A326332(n))+A099439(n+1)`
-/

namespace A296031.P9072416271657878668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 (A326332 n).toNat + A099439 (n + 1)

end

end A296031.P9072416271657878668

/-! ## A296031.P14618142535811161421

`A099439(n+1)+A051159(A237984(n+1))`
-/

namespace A296031.P14618142535811161421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099439 (n + 1) + A051159 (A237984 (n + 1)).toNat

end

end A296031.P14618142535811161421

/-!
# A296032: Number of n X n 0..1 arrays with each 1 adjacent to 2 or 4 king-move neighboring 1's.

The programs for A296032, there is no canonical definition to state claims against.
-/

/-! ## A296032.P17128645805620243501

`A296039(∑[4*n]+1)`
-/

namespace A296032.P17128645805620243501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296032.P17128645805620243501

/-! ## A296032.P1149461327183787050

`record[A296039(A330613(n+1))]`
-/

namespace A296032.P1149461327183787050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296032.P1149461327183787050

/-! ## A296032.P17349727352521790979

`record[gcd(A037012(n), A296039(n+1))]`
-/

namespace A296032.P17349727352521790979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A296039 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296032.P17349727352521790979

/-! ## A296032.P15799315785208960200

`A296039(A001844(n))/A007318(∑[n])`
-/

namespace A296032.P15799315785208960200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296039 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A296032.P15799315785208960200

/-! ## A296032.P7719164876816639114

`A296039(A001844(n))/A000041(C(2, n+2))`
-/

namespace A296032.P7719164876816639114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296039 (A001844 n).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A296032.P7719164876816639114

/-!
# A296033: Number of n X 2 0..1 arrays with each 1 adjacent to 2 or 4 king-move neighboring 1s.

The programs for A296033, the canonical program `A296033.P3957530033573394523` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296033 has offset 1).

The definition of A296033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296033.P3957530033573394523

`a(n-1)+6*a(n-3)+4*a(n-5)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=21, a(4)=55`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A296033

/-- `a(n-1)+6*a(n-3)+4*a(n-5)` -/
def P3957530033573394523.Spec : Prop :=
  ∀ n, (P3957530033573394523.a n : ℤ) = A296033 (n + 1)

theorem P3957530033573394523.correct : P3957530033573394523.Spec := by
  intro n
  simp only [A296033, Nat.add_sub_cancel]

end A296033

/-! ## A296033.P1307706526897500758

`record[ratio[A296039(n+1)]]`
-/

namespace A296033.P1307706526897500758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296033.P1307706526897500758

namespace A296033

/-- `record[ratio[A296039(n+1)]]` -/
def P1307706526897500758.Spec : Prop :=
  ∀ n, P1307706526897500758.a n = (A296033 (n + 1) : ℚ)

end A296033

/-! ## A296033.P16987363055731967617

`A296039(∑[n+1]+2)`
-/

namespace A296033.P16987363055731967617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296033.P16987363055731967617

namespace A296033

/-- `A296039(∑[n+1]+2)` -/
def P16987363055731967617.Spec : Prop :=
  ∀ n, P16987363055731967617.a n = A296033 (n + 1)

end A296033

/-! ## A296033.P11879504591468763772

`record[A296039(n+1)/A029847(n)]`
-/

namespace A296033.P11879504591468763772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296039 (n + 1) : ℚ) / (A029847 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296033.P11879504591468763772

namespace A296033

/-- `record[A296039(n+1)/A029847(n)]` -/
def P11879504591468763772.Spec : Prop :=
  ∀ n, P11879504591468763772.a n = (A296033 (n + 1) : ℚ)

end A296033

/-! ## A296033.P6420962142019971700

`record[gcd(A225413(n), A296039(n+1))]`
-/

namespace A296033.P6420962142019971700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225413 n) (A296039 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296033.P6420962142019971700

namespace A296033

/-- `record[gcd(A225413(n), A296039(n+1))]` -/
def P6420962142019971700.Spec : Prop :=
  ∀ n, (P6420962142019971700.a n : ℤ) = A296033 (n + 1)

end A296033

/-!
# A296034: Number of n X 3 0..1 arrays with each 1 adjacent to 2 or 4 king-move neighboring 1s.

The programs for A296034, there is no canonical definition to state claims against.
-/

/-! ## A296034.P8359345697136752756

`A296039(∑[n+2]+4)`
-/

namespace A296034.P8359345697136752756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296034.P8359345697136752756

/-! ## A296034.P1100085240733700032

`A262681(n)*A296039(A167614(n+1))`
-/

namespace A296034.P1100085240733700032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 n * A296039 (A167614 (n + 1)).toNat

end

end A296034.P1100085240733700032

/-! ## A296034.P15937877060227115911

`A296039(A167614(n+1))%A017010(n)`
-/

namespace A296034.P15937877060227115911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296039 (A167614 (n + 1)).toNat) (A017010 n)

end

end A296034.P15937877060227115911

/-! ## A296034.P4417417276403305512

`or(A000007(n), A296039(A167614(n+1)))`
-/

namespace A296034.P4417417276403305512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A296039 (A167614 (n + 1)).toNat)

end

end A296034.P4417417276403305512

/-! ## A296034.P16932840856467529074

`A296039(A167614(n+1))+A185234(A023416(n))`
-/

namespace A296034.P16932840856467529074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A167614 (n + 1)).toNat + A185234 (A023416 n).toNat

end

end A296034.P16932840856467529074

/-!
# A296035: Number of nX4 0..1 arrays with each 1 adjacent to 2 or 4 king-move neighboring 1s.

The programs for A296035, there is no canonical definition to state claims against.
-/

/-! ## A296035.P17587519122866724540

`A296039(A141214(n)+7)`
-/

namespace A296035.P17587519122866724540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A141214 n + 7).toNat

end

end A296035.P17587519122866724540

/-! ## A296035.P16732504993795362838

`A296039(A055999(n)+10)`
-/

namespace A296035.P16732504993795362838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A055999 n + 10).toNat

end

end A296035.P16732504993795362838

/-! ## A296035.P18374996822230543023

`A296039(Δ[A006503(n)]+7)`
-/

namespace A296035.P18374996822230543023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (f1 (n + 1) - f1 n + 7).toNat

end

end A296035.P18374996822230543023

/-! ## A296035.P8495836301018075782

`A296039(A167614(n+2)+1)`
-/

namespace A296035.P8495836301018075782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A167614 (n + 2) + 1).toNat

end

end A296035.P8495836301018075782

/-! ## A296035.P15222997203062147787

`A296039(∑[A321993(n+3)]+7)`
-/

namespace A296035.P15222997203062147787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (∑ j ∈ Finset.range (n + 1), f1 j + 7).toNat

end

end A296035.P15222997203062147787

/-!
# A296036: Number of nX5 0..1 arrays with each 1 adjacent to 2 or 4 king-move neighboring 1s.

The programs for A296036, there is no canonical definition to state claims against.
-/

/-! ## A296036.P3715717437737096679

`A296039(A167499(n+3))`
-/

namespace A296036.P3715717437737096679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A167499 (n + 3)).toNat

end

end A296036.P3715717437737096679

/-! ## A296036.P2999005139588129202

`A296039(A077169(n+5))`
-/

namespace A296036.P2999005139588129202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A077169 (n + 5)).toNat

end

end A296036.P2999005139588129202

/-! ## A296036.P14668533663628452086

`A296039(∑[n+5]+6)`
-/

namespace A296036.P14668533663628452086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A296036.P14668533663628452086

/-! ## A296036.P11040760971426464449

`A296039(A000096(n+4)-3)+C(n+1, 32)`
-/

namespace A296036.P11040760971426464449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A000096 (n + 4) - 3).toNat + (Nat.choose (n + 1) 32 : ℤ)

end

end A296036.P11040760971426464449

/-! ## A296036.P5079691509404118508

`A210442(A020639(n+2))*A296039(A000096(n+4)-3)`
-/

namespace A296036.P5079691509404118508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A020639 (n + 2)).toNat * A296039 (A000096 (n + 4) - 3).toNat

end

end A296036.P5079691509404118508

/-!
# A296037: Number of nX6 0..1 arrays with each 1 adjacent to 2 or 4 king-move neighboring 1s.

The programs for A296037, there is no canonical definition to state claims against.
-/

/-! ## A296037.P6970862012322911164

`A296039(eq[6, A256910(n)])`
-/

namespace A296037.P6970862012322911164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296037.P6970862012322911164

/-! ## A296037.P1957735568981841163

`A296039(A000217(n+5)+6)`
-/

namespace A296037.P1957735568981841163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A000217 (n + 5) + 6).toNat

end

end A296037.P1957735568981841163

/-! ## A296037.P16520641536085742276

`A296039(A052905(n+2)+11)`
-/

namespace A296037.P16520641536085742276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A052905 (n + 2) + 11).toNat

end

end A296037.P16520641536085742276

/-! ## A296037.P8079811341753731510

`A296039(A055999(n+4)-A004273(n+1))`
-/

namespace A296037.P8079811341753731510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A055999 (n + 4) - A004273 (n + 1)).toNat

end

end A296037.P8079811341753731510

/-! ## A296037.P18219231561813935960

`A296039(A005843(n+7)+A000124(n+3))`
-/

namespace A296037.P18219231561813935960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A005843 (n + 7) + A000124 (n + 3)).toNat

end

end A296037.P18219231561813935960

/-!
# A296038: Number of n X 7 0..1 arrays with each 1 adjacent to 2 or 4 king-move neighboring 1's.

The programs for A296038, there is no canonical definition to state claims against.
-/

/-! ## A296038.P13741566681482765571

`A296039(eq[8, A131818(n+1)])`
-/

namespace A296038.P13741566681482765571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296038.P13741566681482765571

/-! ## A296038.P6245072510057715728

`A296039(A000096(n+6)-(n-1))`
-/

namespace A296038.P6245072510057715728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A000096 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A296038.P6245072510057715728

/-! ## A296038.P12095553899620145222

`A296039(A000124(n+7)-(n+1))`
-/

namespace A296038.P12095553899620145222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A296038.P12095553899620145222

/-! ## A296038.P621426759817081062

`A296039(A374008(n+1))`
-/

namespace A296038.P621426759817081062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (A374008 (n + 1)).toNat

end

end A296038.P621426759817081062

/-! ## A296038.P3908253626094415144

`A296039(eq[6, A193592(n)])`
-/

namespace A296038.P3908253626094415144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296038.P3908253626094415144

/-!
# A296039: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 2 or 4 king-move neighboring 1s.

The programs for A296039, there is no canonical definition to state claims against.
-/

/-! ## A296039.P3142567992275040926

`A296974(n+1)-A184955(A096765(n))`
-/

namespace A296039.P3142567992275040926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (n + 1) - A184955 (A096765 n).toNat

end

end A296039.P3142567992275040926

/-! ## A296039.P16667606336667192782

`∏{p}[A335433(A296405(n+1)), A325401(#)]`
-/

namespace A296039.P16667606336667192782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (A296405 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A325401 p

end

end A296039.P16667606336667192782

/-! ## A296039.P2708573757309431893

`A335433(A296405(n+1))-A326458(n)²`
-/

namespace A296039.P2708573757309431893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (A296405 (n + 1)).toNat - A326458 n ^ 2

end

end A296039.P2708573757309431893

/-! ## A296039.P14170566250474352178

`A296974(n+1)-A060356(A283666(n+1))`
-/

namespace A296039.P14170566250474352178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (n + 1) - A060356 (A283666 (n + 1)).toNat

end

end A296039.P14170566250474352178

/-! ## A296039.P12470077940545348818

`A325401(A296974(n+1)%A100415(n+2))`
-/

namespace A296039.P12470077940545348818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.tmod (A296974 (n + 1)) (A100415 (n + 2))).toNat

end

end A296039.P12470077940545348818

/-!
# A296043: a(n) = [x^n] Product_{k>=1} ((1 + x^(2*k-1))/(1 + x^(2*k)))^n.

The programs for A296043, there is no canonical definition to state claims against.
-/

/-! ## A296043.P4467740987240320228

`A296067(∑[4*n])`
-/

namespace A296043.P4467740987240320228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296043.P4467740987240320228

/-! ## A296043.P14782555022132286066

`A296067(A046092(n))%A077248(n)`
-/

namespace A296043.P14782555022132286066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296067 (A046092 n).toNat) (A077248 n)

end

end A296043.P14782555022132286066

/-! ## A296043.P1614182020438513042

`or(A000007(n), A296067(A046092(n)))`
-/

namespace A296043.P1614182020438513042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A296067 (A046092 n).toNat)

end

end A296043.P1614182020438513042

/-! ## A296043.P4359132104971217164

`A296067(A046092(n))/A007318(∑[n])`
-/

namespace A296043.P4359132104971217164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296067 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A296043.P4359132104971217164

/-! ## A296043.P14925376279855623576

`A296067(A046092(n))+A000007(n+1)`
-/

namespace A296043.P14925376279855623576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (A046092 n).toNat + A000007 (n + 1)

end

end A296043.P14925376279855623576

/-! ## A296043.P15757551973282589423

`or(A185705(n+1), A296067(A046092(n)))`
-/

namespace A296043.P15757551973282589423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185705 (n + 1)) (A296067 (A046092 n).toNat)

end

end A296043.P15757551973282589423

/-! ## A296043.P356718551142776109

`A007318(C(2, n+1))*A296067(A046092(n))`
-/

namespace A296043.P356718551142776109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A296067 (A046092 n).toNat

end

end A296043.P356718551142776109

/-! ## A296043.P2328709970182809010

`A001222(A020483(n))*A296067(A046092(n))`
-/

namespace A296043.P2328709970182809010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020483 n).toNat * A296067 (A046092 n).toNat

end

end A296043.P2328709970182809010

/-!
# A296044: a(n) = [x^n] Product_{k>=1} ((1 + x^(2*k))/(1 - x^(2*k-1)))^n.

The programs for A296044, there is no canonical definition to state claims against.
-/

/-! ## A296044.P16088022614541163439

`A296068(∑[4*n])`
-/

namespace A296044.P16088022614541163439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296068 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296044.P16088022614541163439

/-!
# A296045: a(n) = [x^n] Product_{k>=1} ((1 + x^(2*k-1))/(1 - x^(2*k)))^n.

The programs for A296045, there is no canonical definition to state claims against.
-/

/-! ## A296045.P607835994952958198

`A372414(A073788(n))`
-/

namespace A296045.P607835994952958198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372414 (A073788 n).toNat

end

end A296045.P607835994952958198

/-! ## A296045.P14606547109778561469

`A092525(A372414(n))`
-/

namespace A296045.P14606547109778561469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092525 (A372414 n).toNat

end

end A296045.P14606547109778561469

/-! ## A296045.P14617534185335385423

`A372414(A004879(n+1))`
-/

namespace A296045.P14617534185335385423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372414 (A004879 (n + 1)).toNat

end

end A296045.P14617534185335385423

/-!
# A296046: Expansion of Product_{k>=1} ((1 - x^(2*k))/(1 - x^(2*k-1)))^k.

The programs for A296046, there is no canonical definition to state claims against.
-/

/-! ## A296046.P265600258548353893

`A326676(A059922(n)+A032492(n+1))`
-/

namespace A296046.P265600258548353893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326676 (A059922 n + A032492 (n + 1)).toNat

end

end A296046.P265600258548353893

/-! ## A296046.P3678078503613681596

`A004110(A033865(n))%A284644(n+1)`
-/

namespace A296046.P3678078503613681596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004110 (A033865 n).toNat) (A284644 (n + 1))

end

end A296046.P3678078503613681596

/-! ## A296046.P9431833615426041790

`A194812(A316563(n+1)+A025487(n+1))`
-/

namespace A296046.P9431833615426041790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194812 (A316563 (n + 1) + A025487 (n + 1)).toNat

end

end A296046.P9431833615426041790

/-! ## A296046.P16294998416312036339

`xor(A101080(2*n+1), A333628(A127107(n+1)))`
-/

namespace A296046.P16294998416312036339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A101080 (2 * n + 1)) (A333628 (A127107 (n + 1)).toNat)

end

end A296046.P16294998416312036339

/-! ## A296046.P6988208365233575767

`A357136(lt[A091858(n+1), A091821(3*n+1)])`
-/

namespace A296046.P6988208365233575767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091821 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357136 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296046.P6988208365233575767

/-!
# A296048: Expansion of e.g.f. Product_{k>=1} ((1 - x^k)/(1 + x^k))^(1/k).

The programs for A296048, there is no canonical definition to state claims against.
-/

/-! ## A296048.P506217127243470434

`A138232(eq[4, A341443(2*n+1)])`
-/

namespace A296048.P506217127243470434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341443 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296048.P506217127243470434

/-! ## A296048.P828495673066944154

`(-1)^n*A049116(A139102(n+1))`
-/

namespace A296048.P828495673066944154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A049116 (A139102 (n + 1)).toNat

end

end A296048.P828495673066944154

/-!
# A296050: Number of permutations p of [n] such that min_{j=1..n} |p(j)-j| = 1.

The programs for A296050, there is no canonical definition to state claims against.
-/

/-! ## A296050.P8376586989700184953

`A000166(n)-A001883(n)`
-/

namespace A296050.P8376586989700184953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A001883 n

end

end A296050.P8376586989700184953

/-! ## A296050.P16703408858781866549

`A000142(n)-A001883(n)-A002467(n)`
-/

namespace A296050.P16703408858781866549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A001883 n - A002467 n

end

end A296050.P16703408858781866549

/-! ## A296050.P10847912903342015094

`abs(A182386(n))-A001883(n)`
-/

namespace A296050.P10847912903342015094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| - A001883 n

end

end A296050.P10847912903342015094

/-! ## A296050.P10698554740979363837

`A008290(∑[n])-A001883(n)`
-/

namespace A296050.P10698554740979363837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f1 j) - A001883 n

end

end A296050.P10698554740979363837

/-! ## A296050.P14485642841754061274

`A086764(∑[n])-A001883(n)`
-/

namespace A296050.P14485642841754061274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (∑ j ∈ Finset.range (n + 1), f1 j) - A001883 n

end

end A296050.P14485642841754061274

/-! ## A296050.P15598972884772024598

`A060475(A000096(n))-A001883(n)`
-/

namespace A296050.P15598972884772024598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A000096 n).toNat - A001883 n

end

end A296050.P15598972884772024598

/-! ## A296050.P11577379830719486149

`A068106(A000217(n))-A001883(n)`
-/

namespace A296050.P11577379830719486149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A000217 n).toNat - A001883 n

end

end A296050.P11577379830719486149

/-!
# A296054: Number of permutations of [n] with an equal number of occurrences of the consecutive step patterns 010 and 101, where 1=up and 0=down.

The programs for A296054, there is no canonical definition to state claims against.
-/

/-! ## A296054.P1835204382105009966

`A275311(n)*A326641(A000105(n))`
-/

namespace A296054.P1835204382105009966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275311 n * A326641 (A000105 n).toNat

end

end A296054.P1835204382105009966

/-! ## A296054.P13070295437683646328

`A347663(∑[A104731(n)+A038519(n)])`
-/

namespace A296054.P13070295437683646328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104731 n + A038519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347663 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296054.P13070295437683646328

/-! ## A296054.P4727508732311241685

`A347663(A132381(2*n+1)+A106149(2*n+1))`
-/

namespace A296054.P4727508732311241685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347663 (A132381 (2 * n + 1) + A106149 (2 * n + 1)).toNat

end

end A296054.P4727508732311241685

/-!
# A296057: Denominators of Harary index for the n-permutation star graph.

The programs for A296057, there is no canonical definition to state claims against.
-/

/-! ## A296057.P13491391496593492137

`A003558(C(∑[floor(2*n/5)], 10))`
-/

namespace A296057.P13491391496593492137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 10)

end

end A296057.P13491391496593492137

/-! ## A296057.P2083081872343368517

`A202941(floor(n/4)^ceil(or(2, n-1)/2))`
-/

namespace A296057.P2083081872343368517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202941 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 4⌋ : ℚ) ^ (⌈(Int.lor 2 ((n : ℤ) - 1) : ℚ) / 2⌉ : ℤ))).toNat

end

end A296057.P2083081872343368517

/-! ## A296057.P12115131378315391047

`A137897(A057210(n))`
-/

namespace A296057.P12115131378315391047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137897 (A057210 (n + 10)).toNat

end

end A296057.P12115131378315391047

/-! ## A296057.P10310215847774387811

`A101027(A102114(n))`
-/

namespace A296057.P10310215847774387811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101027 (A102114 n).toNat

end

end A296057.P10310215847774387811

/-! ## A296057.P16904347511348845064

`A101027(A102115(n))`
-/

namespace A296057.P16904347511348845064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101027 (A102115 n).toNat

end

end A296057.P16904347511348845064

/-!
# A296058: Numbers k such that floor((3*k - 1)/2) is prime.

The programs for A296058, the canonical program `A296058.P2087085375536391627` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296058 has offset 1).

The definition of A296058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296058.P18438861020553208778

`floor((2*A000040(n+2)+2)/3)`
-/

namespace A296058.P18438861020553208778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A000040 (n + 2) + 2 : ℚ) / 3⌋

end

end A296058.P18438861020553208778

namespace A296058

/-- `floor((2*A000040(n+2)+2)/3)` -/
def P18438861020553208778.Spec : Prop :=
  ∀ n, P18438861020553208778.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P2087085375536391627

`A004523(A000040(n+2)+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A296058

/-- `A004523(A000040(n+2)+1)` -/
def P2087085375536391627.Spec : Prop :=
  ∀ n, P2087085375536391627.a n = A296058 (n + 1)

theorem P2087085375536391627.correct : P2087085375536391627.Spec := by
  intro n
  simp only [A296058, Nat.add_sub_cancel]

end A296058

/-! ## A296058.P8438100669808561024

`ceil(2*p?[2*n+1]/3)`
-/

namespace A296058.P8438100669808561024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 3⌉

end

end A296058.P8438100669808561024

namespace A296058

/-- `ceil(2*p?[2*n+1]/3)` -/
def P8438100669808561024.Spec : Prop :=
  ∀ n, P8438100669808561024.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P10382952385907160655

`floor(2*(A065091(n+1)+1)/3)`
-/

namespace A296058.P10382952385907160655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A065091 (n + 1) + 1 : ℚ) / 3)⌋

end

end A296058.P10382952385907160655

namespace A296058

/-- `floor(2*(A065091(n+1)+1)/3)` -/
def P10382952385907160655.Spec : Prop :=
  ∀ n, P10382952385907160655.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P3415567526291455628

`ceil(A100484(n+2)/3)`
-/

namespace A296058.P3415567526291455628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100484 (n + 2) : ℚ) / 3⌉

end

end A296058.P3415567526291455628

namespace A296058

/-- `ceil(A100484(n+2)/3)` -/
def P3415567526291455628.Spec : Prop :=
  ∀ n, P3415567526291455628.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P691292091613526477

`floor(2*A008864(n+2)/3)`
-/

namespace A296058.P691292091613526477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A008864 (n + 2) : ℚ) / 3)⌋

end

end A296058.P691292091613526477

namespace A296058

/-- `floor(2*A008864(n+2)/3)` -/
def P691292091613526477.Spec : Prop :=
  ∀ n, P691292091613526477.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P1147245553121010732

`A000040(n+2)-A144769(n+2)`
-/

namespace A296058.P1147245553121010732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A144769 (n + 2)

end

end A296058.P1147245553121010732

namespace A296058

/-- `A000040(n+2)-A144769(n+2)` -/
def P1147245553121010732.Spec : Prop :=
  ∀ n, P1147245553121010732.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P16409052745318088445

`A005097(n+1)+A006254(n+1)-A144769(n+2)`
-/

namespace A296058.P16409052745318088445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + (A006254 (n + 1) - A144769 (n + 2))

end

end A296058.P16409052745318088445

namespace A296058

/-- `A005097(n+1)+A006254(n+1)-A144769(n+2)` -/
def P16409052745318088445.Spec : Prop :=
  ∀ n, P16409052745318088445.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P6782076013520841646

`A318500(A006093(n+2))`
-/

namespace A296058.P6782076013520841646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (A006093 (n + 2)).toNat

end

end A296058.P6782076013520841646

namespace A296058

/-- `A318500(A006093(n+2))` -/
def P6782076013520841646.Spec : Prop :=
  ∀ n, P6782076013520841646.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P1128058964521612340

`A318500(record[A000010(n+3)])`
-/

namespace A296058.P1128058964521612340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A296058.P1128058964521612340

namespace A296058

/-- `A318500(record[A000010(n+3)])` -/
def P1128058964521612340.Spec : Prop :=
  ∀ n, P1128058964521612340.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P4718009775714283465

`A318500(A040976(n+2)+1)`
-/

namespace A296058.P4718009775714283465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (A040976 (n + 2) + 1).toNat

end

end A296058.P4718009775714283465

namespace A296058

/-- `A318500(A040976(n+2)+1)` -/
def P4718009775714283465.Spec : Prop :=
  ∀ n, P4718009775714283465.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P7443661319100685902

`A318500(A065091(n+1)-1)`
-/

namespace A296058.P7443661319100685902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (A065091 (n + 1) - 1).toNat

end

end A296058.P7443661319100685902

namespace A296058

/-- `A318500(A065091(n+1)-1)` -/
def P7443661319100685902.Spec : Prop :=
  ∀ n, P7443661319100685902.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P11957528197997103359

`A318500(A000040(n+2)-1)`
-/

namespace A296058.P11957528197997103359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (A000040 (n + 2) - 1).toNat

end

end A296058.P11957528197997103359

namespace A296058

/-- `A318500(A000040(n+2)-1)` -/
def P11957528197997103359.Spec : Prop :=
  ∀ n, P11957528197997103359.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P11444385310375459143

`eq[2, A001222(or(1, 3*n)+1)]+1`
-/

namespace A296058.P11444385310375459143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 1 (3 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A296058.P11444385310375459143

namespace A296058

/-- `eq[2, A001222(or(1, 3*n)+1)]+1` -/
def P11444385310375459143.Spec : Prop :=
  ∀ n, (P11444385310375459143.a n : ℤ) = A296058 (n + 1)

end A296058

/-! ## A296058.P10897474336053381166

`eq[2, A001222(or(1, n)+n+n+1)]+1`
-/

namespace A296058.P10897474336053381166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 1 n + n + n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A296058.P10897474336053381166

namespace A296058

/-- `eq[2, A001222(or(1, n)+n+n+1)]+1` -/
def P10897474336053381166.Spec : Prop :=
  ∀ n, (P10897474336053381166.a n : ℤ) = A296058 (n + 1)

end A296058

/-! ## A296058.P16304157073045390564

`A318500(eq[3, A318500(n+1)])`
-/

namespace A296058.P16304157073045390564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296058.P16304157073045390564

namespace A296058

/-- `A318500(eq[3, A318500(n+1)])` -/
def P16304157073045390564.Spec : Prop :=
  ∀ n, P16304157073045390564.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P11614253915639840853

`A004773(A006254(n+1))`
-/

namespace A296058.P11614253915639840853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A006254 (n + 1)).toNat

end

end A296058.P11614253915639840853

namespace A296058

/-- `A004773(A006254(n+1))` -/
def P11614253915639840853.Spec : Prop :=
  ∀ n, P11614253915639840853.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P672780960374355674

`A047498(A098090(n+1))`
-/

namespace A296058.P672780960374355674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047498 (A098090 (n + 1)).toNat

end

end A296058.P672780960374355674

namespace A296058

/-- `A047498(A098090(n+1))` -/
def P672780960374355674.Spec : Prop :=
  ∀ n, P672780960374355674.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P6401865578782917419

`A004773(A111333(n+2))`
-/

namespace A296058.P6401865578782917419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A111333 (n + 2)).toNat

end

end A296058.P6401865578782917419

namespace A296058

/-- `A004773(A111333(n+2))` -/
def P6401865578782917419.Spec : Prop :=
  ∀ n, P6401865578782917419.a n = A296058 (n + 1)

end A296058

/-! ## A296058.P8284037909348713394

`A004773(A130291(n+2))`
-/

namespace A296058.P8284037909348713394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A130291 (n + 2)).toNat

end

end A296058.P8284037909348713394

namespace A296058

/-- `A004773(A130291(n+2))` -/
def P8284037909348713394.Spec : Prop :=
  ∀ n, P8284037909348713394.a n = A296058 (n + 1)

end A296058

/-!
# A296059: Numbers k such that (10^k/8 + 1)/9 is prime.

The programs for A296059, there is no canonical definition to state claims against.
-/

/-! ## A296059.P9587304552271535155

`record[A063691(A210640(3*n+5))+1]`
-/

namespace A296059.P9587304552271535155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A210640 (3 * n + 5)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296059.P9587304552271535155

/-!
# A296062: Base-2 logarithm of the number of different shapes of balanced binary trees with n nodes (A110316).

The programs for A296062, the canonical program `A296062.P5761383797540387978` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296062 has offset 0).

The definition of A296062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296062.P5761383797540387978

`n-A268289(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A296062

/-- `n-A268289(n)` -/
def P5761383797540387978.Spec : Prop :=
  ∀ n, P5761383797540387978.a n = A296062 n

theorem P5761383797540387978.correct : P5761383797540387978.Spec := by
  intro n
  simp only [A296062]

end A296062

/-! ## A296062.P18181665744031850111

`A007814(A110316(n))`
-/

namespace A296062.P18181665744031850111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A110316 n).toNat

end

end A296062.P18181665744031850111

namespace A296062

/-- `A007814(A110316(n))` -/
def P18181665744031850111.Spec : Prop :=
  ∀ n, P18181665744031850111.a n = A296062 n

end A296062

/-! ## A296062.P8078214939774585126

`abs(∑[a(floor(n/2))-(-1)^n])` with `a(0)=0, a(1)=0`
-/

namespace A296062.P8078214939774585126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A296062.P8078214939774585126

namespace A296062

/-- `abs(∑[a(floor(n/2))-(-1)^n])` -/
def P8078214939774585126.Spec : Prop :=
  ∀ n, P8078214939774585126.a n = A296062 n

end A296062

/-! ## A296062.P9365918286501849954

`-∑[a(floor(n/2))-(-1)^n]` with `a(0)=0, a(1)=0`
-/

namespace A296062.P9365918286501849954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296062.P9365918286501849954

namespace A296062

/-- `-∑[a(floor(n/2))-(-1)^n]` -/
def P9365918286501849954.Spec : Prop :=
  ∀ n, P9365918286501849954.a n = A296062 n

end A296062

/-! ## A296062.P2705321219825805942

`n-∑[a(floor(n/2))-(-1)^n]` with `a(0)=0`
-/

namespace A296062.P2705321219825805942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296062.P2705321219825805942

namespace A296062

/-- `n-∑[a(floor(n/2))-(-1)^n]` -/
def P2705321219825805942.Spec : Prop :=
  ∀ n, P2705321219825805942.a n = A296062 n

end A296062

/-! ## A296062.P7408757542263172788

`n-∑[A145037(n)]`
-/

namespace A296062.P7408757542263172788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296062.P7408757542263172788

namespace A296062

/-- `n-∑[A145037(n)]` -/
def P7408757542263172788.Spec : Prop :=
  ∀ n, P7408757542263172788.a n = A296062 n

end A296062

/-! ## A296062.P12907645166747747981

`n-(A301336(n)+1)`
-/

namespace A296062.P12907645166747747981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A301336 n + 1)

end

end A296062.P12907645166747747981

namespace A296062

/-- `n-(A301336(n)+1)` -/
def P12907645166747747981.Spec : Prop :=
  ∀ n, P12907645166747747981.a n = A296062 n

theorem P12907645166747747981.correct : P12907645166747747981.Spec := by
  intro n
  simp only [A296062, Nat.add_sub_cancel, A296062.P12907645166747747981.a, A296062.P5761383797540387978.a, A268289, A268289.P17910930367041413554.a, A301336, A301336.P12381687914768118623.a, A037861, A037861.P603769739827553154.a, A000120, A000120.P2816527436160941581.a, A023416, A023416.P8124303482289229133.a, A005187, A005187.P3874015513960485494.a, A070939, A070939.P14677302147902843740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A296062

/-! ## A296062.P17044342979543581434

`n-∑[∑[A269735(n)]]`
-/

namespace A296062.P17044342979543581434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296062.P17044342979543581434

namespace A296062

/-- `n-∑[∑[A269735(n)]]` -/
def P17044342979543581434.Spec : Prop :=
  ∀ n, P17044342979543581434.a n = A296062 n

end A296062

/-! ## A296062.P7132696379455115351

`∑[A037861(n)+1]-2`
-/

namespace A296062.P7132696379455115351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A296062.P7132696379455115351

namespace A296062

/-- `∑[A037861(n)+1]-2` -/
def P7132696379455115351.Spec : Prop :=
  ∀ n, P7132696379455115351.a n = A296062 n

end A296062

/-! ## A296062.P8839544452368451506

`A023443(n-A301336(n))`
-/

namespace A296062.P8839544452368451506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n : ℤ) - A301336 n).toNat

end

end A296062.P8839544452368451506

namespace A296062

/-- `A023443(n-A301336(n))` -/
def P8839544452368451506.Spec : Prop :=
  ∀ n, P8839544452368451506.a n = A296062 n

end A296062

/-! ## A296062.P12140929926187588286

`∑[A158388(n)+A037861(n)]`
-/

namespace A296062.P12140929926187588286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A037861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296062.P12140929926187588286

namespace A296062

/-- `∑[A158388(n)+A037861(n)]` -/
def P12140929926187588286.Spec : Prop :=
  ∀ n, P12140929926187588286.a n = A296062 n

end A296062

/-! ## A296062.P13395061875642118373

`n-∑[A124754(A003188(n))]`
-/

namespace A296062.P13395061875642118373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296062.P13395061875642118373

namespace A296062

/-- `n-∑[A124754(A003188(n))]` -/
def P13395061875642118373.Spec : Prop :=
  ∀ n, P13395061875642118373.a n = A296062 n

end A296062

/-! ## A296062.P2324465309777389206

`A181132(n)+n-A000788(n)`
-/

namespace A296062.P2324465309777389206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181132 n + ((n : ℤ) - A000788 n)

end

end A296062.P2324465309777389206

namespace A296062

/-- `A181132(n)+n-A000788(n)` -/
def P2324465309777389206.Spec : Prop :=
  ∀ n, P2324465309777389206.a n = A296062 n

end A296062

/-! ## A296062.P14281047318629547772

`∑[A080791(n)-A000120(n)]+n`
-/

namespace A296062.P14281047318629547772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A296062.P14281047318629547772

namespace A296062

/-- `∑[A080791(n)-A000120(n)]+n` -/
def P14281047318629547772.Spec : Prop :=
  ∀ n, P14281047318629547772.a n = A296062 n

end A296062

/-! ## A296062.P10752542984938332891

`n-(A000788(n)+1-A059015(n))`
-/

namespace A296062.P10752542984938332891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A000788 n + (1 - A059015 n))

end

end A296062.P10752542984938332891

namespace A296062

/-- `n-(A000788(n)+1-A059015(n))` -/
def P10752542984938332891.Spec : Prop :=
  ∀ n, P10752542984938332891.a n = A296062 n

end A296062

/-! ## A296062.P6641076327854135317

`abs(∑[A145037(2*n)])`
-/

namespace A296062.P6641076327854135317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A296062.P6641076327854135317

namespace A296062

/-- `abs(∑[A145037(2*n)])` -/
def P6641076327854135317.Spec : Prop :=
  ∀ n, P6641076327854135317.a n = A296062 n

end A296062

/-! ## A296062.P2889562465376059035

`∑[A037861(2*n)]-1`
-/

namespace A296062.P2889562465376059035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A296062.P2889562465376059035

namespace A296062

/-- `∑[A037861(2*n)]-1` -/
def P2889562465376059035.Spec : Prop :=
  ∀ n, P2889562465376059035.a n = A296062 n

end A296062

/-! ## A296062.P1229789905109869640

`∑[A080791(2*n)-A000120(n)]`
-/

namespace A296062.P1229789905109869640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * n) - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296062.P1229789905109869640

namespace A296062

/-- `∑[A080791(2*n)-A000120(n)]` -/
def P1229789905109869640.Spec : Prop :=
  ∀ n, P1229789905109869640.a n = A296062 n

end A296062

/-! ## A296062.P5425608471365937239

`∑[A080791(2*n)-log2(A001316(n))]`
-/

namespace A296062.P5425608471365937239
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080791 (2 * n) : ℝ) - Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296062.P5425608471365937239

namespace A296062

/-- `∑[A080791(2*n)-log2(A001316(n))]` -/
def P5425608471365937239.Spec : Prop :=
  ∀ n, P5425608471365937239.a n = (A296062 n : ℝ)

end A296062

/-! ## A296062.P7125082940917245227

`∑[A080791(2*n)-A001222(A071044(n))]`
-/

namespace A296062.P7125082940917245227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * n) - A001222 (A071044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296062.P7125082940917245227

namespace A296062

/-- `∑[A080791(2*n)-A001222(A071044(n))]` -/
def P7125082940917245227.Spec : Prop :=
  ∀ n, P7125082940917245227.a n = A296062 n

end A296062

/-!
# A296063: a(n) is the smallest number (in absolute value) not yet in the sequence such that the arithmetic mean of the first n terms a(1), a(2), ..., a(n) is an integer. Preference is given to positive values of a(n); a(1)=1; 0 not allowed.

The programs for A296063, the canonical program `A296063.P431010347102663031` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296063 has offset 1).

The definition of A296063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296063.P431010347102663031

`Δ[lcm(2, n)]-1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A296063

/-- `Δ[lcm(2, n)]-1` -/
def P431010347102663031.Spec : Prop :=
  ∀ n, P431010347102663031.a n = A296063 (n + 1)

theorem P431010347102663031.correct : P431010347102663031.Spec := by
  intro n
  simp only [A296063, Nat.add_sub_cancel]

end A296063

/-! ## A296063.P10822148200326486446

`Δ[n*n%2]`
-/

namespace A296063.P10822148200326486446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A296063.P10822148200326486446

namespace A296063

/-- `Δ[n*n%2]` -/
def P10822148200326486446.Spec : Prop :=
  ∀ n, P10822148200326486446.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P4188583648893181203

`Δ[n*and(1, n)]`
-/

namespace A296063.P4188583648893181203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A296063.P4188583648893181203

namespace A296063

/-- `Δ[n*and(1, n)]` -/
def P4188583648893181203.Spec : Prop :=
  ∀ n, P4188583648893181203.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P16986281763076771313

`Δ[C(n, xor(1, n))]`
-/

namespace A296063.P16986281763076771313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A296063.P16986281763076771313

namespace A296063

/-- `Δ[C(n, xor(1, n))]` -/
def P16986281763076771313.Spec : Prop :=
  ∀ n, P16986281763076771313.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P7684956345120155857

`Δ[and(n, (-1)^n)]`
-/

namespace A296063.P7684956345120155857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296063.P7684956345120155857

namespace A296063

/-- `Δ[and(n, (-1)^n)]` -/
def P7684956345120155857.Spec : Prop :=
  ∀ n, P7684956345120155857.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P16742033964421260934

`or(1, n*(-1)^n)`
-/

namespace A296063.P16742033964421260934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * (-1) ^ n)

end

end A296063.P16742033964421260934

namespace A296063

/-- `or(1, n*(-1)^n)` -/
def P16742033964421260934.Spec : Prop :=
  ∀ n, P16742033964421260934.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P7459837491745785089

`or(1, n)/(-1)^n`
-/

namespace A296063.P7459837491745785089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) / ((-1) ^ n : ℚ)

end

end A296063.P7459837491745785089

namespace A296063

/-- `or(1, n)/(-1)^n` -/
def P7459837491745785089.Spec : Prop :=
  ∀ n, P7459837491745785089.a n = (A296063 (n + 1) : ℚ)

end A296063

/-! ## A296063.P7842659791602132586

`-xor(n, 1-gcd(2, n))`
-/

namespace A296063.P7842659791602132586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (1 - (Nat.gcd 2 n : ℤ))

end

end A296063.P7842659791602132586

namespace A296063

/-- `-xor(n, 1-gcd(2, n))` -/
def P7842659791602132586.Spec : Prop :=
  ∀ n, P7842659791602132586.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P3038916422706226945

`xor(n, -and(1, n))+1`
-/

namespace A296063.P3038916422706226945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(Nat.land 1 n : ℤ)) + 1

end

end A296063.P3038916422706226945

namespace A296063

/-- `xor(n, -and(1, n))+1` -/
def P3038916422706226945.Spec : Prop :=
  ∀ n, P3038916422706226945.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P1216749451213168047

`-xor(n, and(1, n)-1)`
-/

namespace A296063.P1216749451213168047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) ((Nat.land 1 n : ℤ) - 1)

end

end A296063.P1216749451213168047

namespace A296063

/-- `-xor(n, and(1, n)-1)` -/
def P1216749451213168047.Spec : Prop :=
  ∀ n, P1216749451213168047.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P8793011563947448123

`xor(n, gcd(4, n²)-3)`
-/

namespace A296063.P8793011563947448123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((Nat.gcd 4 (n ^ 2) : ℤ) - 3)

end

end A296063.P8793011563947448123

namespace A296063

/-- `xor(n, gcd(4, n²)-3)` -/
def P8793011563947448123.Spec : Prop :=
  ∀ n, P8793011563947448123.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P12387548833727643150

`xor(n, (-2)^and(1, n))`
-/

namespace A296063.P12387548833727643150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((-2) ^ Nat.land 1 n)

end

end A296063.P12387548833727643150

namespace A296063

/-- `xor(n, (-2)^and(1, n))` -/
def P12387548833727643150.Spec : Prop :=
  ∀ n, P12387548833727643150.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P5170128492659184579

`Δ[or(1, n)%(n+1)]`
-/

namespace A296063.P5170128492659184579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A296063.P5170128492659184579

namespace A296063

/-- `Δ[or(1, n)%(n+1)]` -/
def P5170128492659184579.Spec : Prop :=
  ∀ n, P5170128492659184579.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P17184507277378879900

`Δ[C(n+1, and(1, n))]`
-/

namespace A296063.P17184507277378879900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A296063.P17184507277378879900

namespace A296063

/-- `Δ[C(n+1, and(1, n))]` -/
def P17184507277378879900.Spec : Prop :=
  ∀ n, P17184507277378879900.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P9614966015024726945

`Δ[C(n+1, or(1, n))]`
-/

namespace A296063.P9614966015024726945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A296063.P9614966015024726945

namespace A296063

/-- `Δ[C(n+1, or(1, n))]` -/
def P9614966015024726945.Spec : Prop :=
  ∀ n, P9614966015024726945.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P3646389023710252690

`∏[-ratio[or(1, n-1)]]`
-/

namespace A296063.P3646389023710252690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A296063.P3646389023710252690

namespace A296063

/-- `∏[-ratio[or(1, n-1)]]` -/
def P3646389023710252690.Spec : Prop :=
  ∀ n, P3646389023710252690.a n = (A296063 (n + 1) : ℚ)

end A296063

/-! ## A296063.P5139787814362758608

`-xor(n, n-or(1, n))`
-/

namespace A296063.P5139787814362758608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) ((n : ℤ) - (Nat.lor 1 n : ℤ))

end

end A296063.P5139787814362758608

namespace A296063

/-- `-xor(n, n-or(1, n))` -/
def P5139787814362758608.Spec : Prop :=
  ∀ n, P5139787814362758608.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P18040973313176044476

`-xor(n, -char[2*n])`
-/

namespace A296063.P18040973313176044476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A296063.P18040973313176044476

namespace A296063

/-- `-xor(n, -char[2*n])` -/
def P18040973313176044476.Spec : Prop :=
  ∀ n, P18040973313176044476.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P2647967374767561828

`Δ[(n+1)^(n²%2)]`
-/

namespace A296063.P2647967374767561828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n ^ 2 % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A296063.P2647967374767561828

namespace A296063

/-- `Δ[(n+1)^(n²%2)]` -/
def P2647967374767561828.Spec : Prop :=
  ∀ n, P2647967374767561828.a n = A296063 (n + 1)

end A296063

/-! ## A296063.P11101560648444367253

`or(1, n)²-∑[2*n]`
-/

namespace A296063.P11101560648444367253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A296063.P11101560648444367253

namespace A296063

/-- `or(1, n)²-∑[2*n]` -/
def P11101560648444367253.Spec : Prop :=
  ∀ n, P11101560648444367253.a n = A296063 (n + 1)

end A296063

/-!
# A296064: a(1) = 0; thereafter a(n) is the smallest number (in absolute value) not yet in the sequence such that the arithmetic mean of the first n terms a(1), a(2), ..., a(n) is an integer. Preference is given to positive values of a(n).

The programs for A296064, the canonical program `A296064.P10874554219386975348` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296064 has offset 1).

The definition of A296064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296064.P10874554219386975348

`a(n-3)+a(n-2)-a(n-1)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=-3, a(4)=5, a(5)=-5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A296064

/-- `a(n-3)+a(n-2)-a(n-1)` -/
def P10874554219386975348.Spec : Prop :=
  ∀ n, P10874554219386975348.a n = A296064 (n + 1)

theorem P10874554219386975348.correct : P10874554219386975348.Spec := by
  intro n
  simp only [A296064, Nat.add_sub_cancel]

end A296064

/-! ## A296064.P11656744340422491070

`Δ[n*C(2, a(n-1))]` with `a(0)=0, a(1)=0`
-/

namespace A296064.P11656744340422491070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  n * Nat.choose 2 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A296064.P11656744340422491070

namespace A296064

/-- `Δ[n*C(2, a(n-1))]` -/
def P11656744340422491070.Spec : Prop :=
  ∀ n, P11656744340422491070.a n = A296064 (n + 1)

end A296064

/-! ## A296064.P3005635231295953088

`ogf((2x+3x^2-4x^3-x^4+2x^5)/(1+x-x^2-x^3))`
-/

namespace A296064.P3005635231295953088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, -4, -1, 2] [1, 1, -1, -1] n

end

end A296064.P3005635231295953088

namespace A296064

/-- `ogf((2x+3x^2-4x^3-x^4+2x^5)/(1+x-x^2-x^3))` -/
def P3005635231295953088.Spec : Prop :=
  ∀ n, P3005635231295953088.a n = A296064 (n + 1)

end A296064

/-! ## A296064.P17854832953757207843

`Δ[gcd(n+1, (1-a(n-1))²)]` with `a(0)=1, a(1)=1`
-/

namespace A296064.P17854832953757207843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Int.gcd (n + 1 : ℤ) ((1 - (f1 (n - 1) : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A296064.P17854832953757207843

namespace A296064

/-- `Δ[gcd(n+1, (1-a(n-1))²)]` -/
def P17854832953757207843.Spec : Prop :=
  ∀ n, P17854832953757207843.a n = A296064 (n + 1)

end A296064

/-! ## A296064.P17886249560829786144

`floor(1-a(n-1)-n/a(n-1))` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A296064.P17886249560829786144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  ⌊(1 - a (n - 1) : ℚ) - (n : ℚ) / (a (n - 1) : ℚ)⌋

end

end A296064.P17886249560829786144

namespace A296064

/-- `floor(1-a(n-1)-n/a(n-1))` -/
def P17886249560829786144.Spec : Prop :=
  ∀ n, P17886249560829786144.a n = A296064 (n + 1)

end A296064

/-! ## A296064.P2583188953131463320

`n%a(n-1)-n*a(n-1)%2` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A296064.P2583188953131463320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  Int.tmod (n : ℤ) (a (n - 1)) - (n : ℤ) * Int.tmod (a (n - 1)) 2

end

end A296064.P2583188953131463320

namespace A296064

/-- `n%a(n-1)-n*a(n-1)%2` -/
def P2583188953131463320.Spec : Prop :=
  ∀ n, P2583188953131463320.a n = A296064 (n + 1)

end A296064

/-! ## A296064.P18331056000617531327

`Δ[and(n, A081729(n))]`
-/

namespace A296064.P18331056000617531327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A081729 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296064.P18331056000617531327

namespace A296064

/-- `Δ[and(n, A081729(n))]` -/
def P18331056000617531327.Spec : Prop :=
  ∀ n, P18331056000617531327.a n = A296064 (n + 1)

end A296064

/-! ## A296064.P17622980119324885917

`Δ[n*and(1, A107393(n))]`
-/

namespace A296064.P17622980119324885917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A107393 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296064.P17622980119324885917

namespace A296064

/-- `Δ[n*and(1, A107393(n))]` -/
def P17622980119324885917.Spec : Prop :=
  ∀ n, P17622980119324885917.a n = A296064 (n + 1)

end A296064

/-! ## A296064.P16200090427508639694

`Δ[n*A266719(n)]`
-/

namespace A296064.P16200090427508639694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A266719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296064.P16200090427508639694

namespace A296064

/-- `Δ[n*A266719(n)]` -/
def P16200090427508639694.Spec : Prop :=
  ∀ n, P16200090427508639694.a n = A296064 (n + 1)

end A296064

/-! ## A296064.P16847870599730208567

`Δ[n*char[A004277(n)+1]]`
-/

namespace A296064.P16847870599730208567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A296064.P16847870599730208567

namespace A296064

/-- `Δ[n*char[A004277(n)+1]]` -/
def P16847870599730208567.Spec : Prop :=
  ∀ n, P16847870599730208567.a n = A296064 (n + 1)

end A296064

/-! ## A296064.P8050735096160543897

`Δ[n*char[A093411(n)+2]]`
-/

namespace A296064.P8050735096160543897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 n + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A296064.P8050735096160543897

namespace A296064

/-- `Δ[n*char[A093411(n)+2]]` -/
def P8050735096160543897.Spec : Prop :=
  ∀ n, P8050735096160543897.a n = A296064 (n + 1)

end A296064

/-! ## A296064.P17282250672420519270

`Δ[n*A067721(Δ[A270059(n)])]`
-/

namespace A296064.P17282250672420519270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A067721 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296064.P17282250672420519270

namespace A296064

/-- `Δ[n*A067721(Δ[A270059(n)])]` -/
def P17282250672420519270.Spec : Prop :=
  ∀ n, P17282250672420519270.a n = A296064 (n + 1)

end A296064

/-! ## A296064.P5962902129792507685

`Δ[n*A266444(3*n)]`
-/

namespace A296064.P5962902129792507685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A266444 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296064.P5962902129792507685

namespace A296064

/-- `Δ[n*A266444(3*n)]` -/
def P5962902129792507685.Spec : Prop :=
  ∀ n, P5962902129792507685.a n = A296064 (n + 1)

end A296064

/-! ## A296064.P2851499306679659979

`Δ[n*A292262((1-n)²)]`
-/

namespace A296064.P2851499306679659979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292262 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296064.P2851499306679659979

namespace A296064

/-- `Δ[n*A292262((1-n)²)]` -/
def P2851499306679659979.Spec : Prop :=
  ∀ n, P2851499306679659979.a n = A296064 (n + 1)

end A296064

/-!
# A296065: Partial sums of A296064.

The programs for A296065, the canonical program `A296065.P9151723861670224574` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296065 has offset 1).

The definition of A296065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296065.P9151723861670224574

`or(1, n)-a(n-1)` with `a(0)=0, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A296065

/-- `or(1, n)-a(n-1)` -/
def P9151723861670224574.Spec : Prop :=
  ∀ n, P9151723861670224574.a n = A296065 (n + 1)

theorem P9151723861670224574.correct : P9151723861670224574.Spec := by
  intro n
  simp only [A296065, Nat.add_sub_cancel]

end A296065

/-! ## A296065.P13399184930317395107

`(n+1)*C(2, a(n-1))` with `a(0)=0`
-/

namespace A296065.P13399184930317395107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) * Nat.choose 2 (a (n - 1))

end

end A296065.P13399184930317395107

namespace A296065

/-- `(n+1)*C(2, a(n-1))` -/
def P13399184930317395107.Spec : Prop :=
  ∀ n, (P13399184930317395107.a n : ℤ) = A296065 (n + 1)

end A296065

/-! ## A296065.P10281369632142243008

`lcm(n+1, C(2, a(n-1)))` with `a(0)=0`
-/

namespace A296065.P10281369632142243008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm (n + 1) (Nat.choose 2 (a (n - 1)))

end

end A296065.P10281369632142243008

namespace A296065

/-- `lcm(n+1, C(2, a(n-1)))` -/
def P10281369632142243008.Spec : Prop :=
  ∀ n, (P10281369632142243008.a n : ℤ) = A296065 (n + 1)

end A296065

/-! ## A296065.P4422448776878681254

`(n+1)*Δ[round((n-2)/2)]`
-/

namespace A296065.P4422448776878681254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A296065.P4422448776878681254

namespace A296065

/-- `(n+1)*Δ[round((n-2)/2)]` -/
def P4422448776878681254.Spec : Prop :=
  ∀ n, P4422448776878681254.a n = A296065 (n + 1)

end A296065

/-! ## A296065.P6364879380766805538

`gcd(n+2, a(n%2))-1` with `a(0)=0, a(1)=2`
-/

namespace A296065.P6364879380766805538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (Int.gcd (n + 2 : ℤ) (a (n % 2)) : ℤ) - 1

end

end A296065.P6364879380766805538

namespace A296065

/-- `gcd(n+2, a(n%2))-1` -/
def P6364879380766805538.Spec : Prop :=
  ∀ n, P6364879380766805538.a n = A296065 (n + 1)

end A296065

/-! ## A296065.P5726322305116688001

`floor((n+1)^(-1)^a(n-1))` with `a(0)=0`
-/

namespace A296065.P5726322305116688001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n + 1 : ℝ) ^ ((-1 : ℚ) ^ (a (n - 1) : ℤ) : ℝ)⌋

end

end A296065.P5726322305116688001

namespace A296065

/-- `floor((n+1)^(-1)^a(n-1))` -/
def P5726322305116688001.Spec : Prop :=
  ∀ n, P5726322305116688001.a n = A296065 (n + 1)

end A296065

/-! ## A296065.P1915030296828460745

`C(n+1, a(n-1)+n)` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A296065.P1915030296828460745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  Nat.choose (n + 1) (a (n - 1) + n)

end

end A296065.P1915030296828460745

namespace A296065

/-- `C(n+1, a(n-1)+n)` -/
def P1915030296828460745.Spec : Prop :=
  ∀ n, (P1915030296828460745.a n : ℤ) = A296065 (n + 1)

end A296065

/-! ## A296065.P6466036035073361244

`and(n+1, and(1, a(n-1))-1)` with `a(0)=0`
-/

namespace A296065.P6466036035073361244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (n + 1 : ℤ) (Int.land 1 (a (n - 1)) - 1)

end

end A296065.P6466036035073361244

namespace A296065

/-- `and(n+1, and(1, a(n-1))-1)` -/
def P6466036035073361244.Spec : Prop :=
  ∀ n, P6466036035073361244.a n = A296065 (n + 1)

end A296065

/-! ## A296065.P5931107334248861773

`round((n+1)^(-1)^a(n-1))` with `a(0)=0`
-/

namespace A296065.P5931107334248861773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ ((-1 : ℚ) ^ (a (n - 1) : ℤ) : ℝ))

end

end A296065.P5931107334248861773

namespace A296065

/-- `round((n+1)^(-1)^a(n-1))` -/
def P5931107334248861773.Spec : Prop :=
  ∀ n, P5931107334248861773.a n = A296065 (n + 1)

end A296065

/-! ## A296065.P3050660438141668100

`1-floor(n/(a(n-1)-1))` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A296065.P3050660438141668100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  1 - ⌊(n : ℚ) / (a (n - 1) - 1 : ℚ)⌋

end

end A296065.P3050660438141668100

namespace A296065

/-- `1-floor(n/(a(n-1)-1))` -/
def P3050660438141668100.Spec : Prop :=
  ∀ n, P3050660438141668100.a n = A296065 (n + 1)

end A296065

/-! ## A296065.P13346601996461327520

`C(2, a(n-1))*∑[2*n]/n` with `a(0)=0`
-/

namespace A296065.P13346601996461327520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((Nat.choose 2 (SequenceMachineLib.roundAway (a (n - 1))).toNat * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (n : ℚ)

end

end A296065.P13346601996461327520

namespace A296065

/-- `C(2, a(n-1))*∑[2*n]/n` -/
def P13346601996461327520.Spec : Prop :=
  ∀ n, P13346601996461327520.a n = (A296065 (n + 1) : ℚ)

end A296065

/-! ## A296065.P4690690271834314513

`(a(n-1)%2+1+n)%(n+2)` with `a(0)=0`
-/

namespace A296065.P4690690271834314513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) % 2 + 1 + n) % (n + 2)

end

end A296065.P4690690271834314513

namespace A296065

/-- `(a(n-1)%2+1+n)%(n+2)` -/
def P4690690271834314513.Spec : Prop :=
  ∀ n, (P4690690271834314513.a n : ℤ) = A296065 (n + 1)

end A296065

/-! ## A296065.P9684096092428245207

`a(n-2)%2-(a(n-1)-n)` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A296065.P9684096092428245207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  Int.tmod (a (n - 2)) 2 - (a (n - 1) - (n : ℤ))

end

end A296065.P9684096092428245207

namespace A296065

/-- `a(n-2)%2-(a(n-1)-n)` -/
def P9684096092428245207.Spec : Prop :=
  ∀ n, P9684096092428245207.a n = A296065 (n + 1)

end A296065

/-! ## A296065.P15247005193438435548

`2*(n-a(n-1))-a(n-2)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=0`
-/

namespace A296065.P15247005193438435548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 0] fun n a =>
  2 * ((n : ℤ) - a (n - 1)) - a (n - 2)

end

end A296065.P15247005193438435548

namespace A296065

/-- `2*(n-a(n-1))-a(n-2)` -/
def P15247005193438435548.Spec : Prop :=
  ∀ n, P15247005193438435548.a n = A296065 (n + 1)

end A296065

/-! ## A296065.P9031953645860621496

`n+1-(a(n-1)+a(n-1)/n)` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A296065.P9031953645860621496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  (n + 1 : ℚ) - (a (n - 1) + a (n - 1) / (n : ℚ))

end

end A296065.P9031953645860621496

namespace A296065

/-- `n+1-(a(n-1)+a(n-1)/n)` -/
def P9031953645860621496.Spec : Prop :=
  ∀ n, P9031953645860621496.a n = (A296065 (n + 1) : ℚ)

end A296065

/-! ## A296065.P11277278798274164587

`∑[A296064(n+1)]`
-/

namespace A296065.P11277278798274164587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296065.P11277278798274164587

namespace A296065

/-- `∑[A296064(n+1)]` -/
def P11277278798274164587.Spec : Prop :=
  ∀ n, P11277278798274164587.a n = A296065 (n + 1)

end A296065

/-! ## A296065.P4251771339798567858

`and(n+1, A081729(n+1))`
-/

namespace A296065.P4251771339798567858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A081729 (n + 1))

end

end A296065.P4251771339798567858

namespace A296065

/-- `and(n+1, A081729(n+1))` -/
def P4251771339798567858.Spec : Prop :=
  ∀ n, P4251771339798567858.a n = A296065 (n + 1)

end A296065

/-! ## A296065.P9532418335401293547

`A027620(n)%A265283(n)`
-/

namespace A296065.P9532418335401293547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027620 n) (A265283 n)

end

end A296065.P9532418335401293547

namespace A296065

/-- `A027620(n)%A265283(n)` -/
def P9532418335401293547.Spec : Prop :=
  ∀ n, P9532418335401293547.a n = A296065 (n + 1)

end A296065

/-! ## A296065.P7127956328009158402

`A053650(n+1)%A103517(n)`
-/

namespace A296065.P7127956328009158402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053650 (n + 1)) (A103517 n)

end

end A296065.P7127956328009158402

namespace A296065

/-- `A053650(n+1)%A103517(n)` -/
def P7127956328009158402.Spec : Prop :=
  ∀ n, P7127956328009158402.a n = A296065 (n + 1)

end A296065

/-! ## A296065.P9672275603747705199

`A067037(n+1)%A103517(n)`
-/

namespace A296065.P9672275603747705199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067037 (n + 1)) (A103517 n)

end

end A296065.P9672275603747705199

namespace A296065

/-- `A067037(n+1)%A103517(n)` -/
def P9672275603747705199.Spec : Prop :=
  ∀ n, P9672275603747705199.a n = A296065 (n + 1)

end A296065

/-!
# A296066: a(n) = A296065(n)/n.

The programs for A296066, the canonical program `A296066.P16015597603883370750` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296066 has offset 1).

The definition of A296066 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296065, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A296066.P16015597603883370750

`A296065(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A296066

/-- `A296065(n+1)/(n+1)` -/
def P16015597603883370750.Spec : Prop :=
  ∀ n, P16015597603883370750.a n = (A296066 (n + 1) : ℚ)

end A296066

/-!
# A296067: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} ((1 + x^(2*j-1))/(1 + x^(2*j)))^k.

The programs for A296067, there is no canonical definition to state claims against.
-/

/-! ## A296067.P16781879649639184028

`A071676(A061579(n)%A068744(n))`
-/

namespace A296067.P16781879649639184028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071676 (Int.tmod (A061579 n) (A068744 n)).toNat

end

end A296067.P16781879649639184028

/-! ## A296067.P13436817497349888813

`A071676(A061579(n))%A180414(n+2)`
-/

namespace A296067.P13436817497349888813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071676 (A061579 n).toNat) (A180414 (n + 2))

end

end A296067.P13436817497349888813

/-! ## A296067.P9575148687878260492

`A106510(A364074(n+2))*A286354(n)`
-/

namespace A296067.P9575148687878260492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (A364074 (n + 2)).toNat * A286354 n

end

end A296067.P9575148687878260492

/-! ## A296067.P15733027235161437597

`A374684(A008277(n+1))-A323224(n)`
-/

namespace A296067.P15733027235161437597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 (A008277 (n + 1)).toNat - A323224 n

end

end A296067.P15733027235161437597

/-! ## A296067.P3818472438206700177

`or(A008683(A249275(3*n+2)), A350529(n))`
-/

namespace A296067.P3818472438206700177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A249275 (3 * n + 2)).toNat) (A350529 n)

end

end A296067.P3818472438206700177

/-!
# A296068: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} ((1 + x^(2*j))/(1 - x^(2*j-1)))^k.

The programs for A296068, there is no canonical definition to state claims against.
-/

/-! ## A296068.P13192938708803616772

`A144064(n)-A055641(A322266(n+1))`
-/

namespace A296068.P13192938708803616772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 n - A055641 (A322266 (n + 1)).toNat

end

end A296068.P13192938708803616772

/-! ## A296068.P790493849321241804

`and(A152388(n+1), A384900(n))`
-/

namespace A296068.P790493849321241804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A384900 n)

end

end A296068.P790493849321241804

/-! ## A296068.P16027309226955741118

`and(A383046(n+3), A384900(n))`
-/

namespace A296068.P16027309226955741118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A383046 (n + 3)) (A384900 n)

end

end A296068.P16027309226955741118

/-! ## A296068.P3207278803700755929

`A144064(n)-A125005(A326323(n))`
-/

namespace A296068.P3207278803700755929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 n - A125005 (A326323 n).toNat

end

end A296068.P3207278803700755929

/-! ## A296068.P989318162101795209

`A384900(n)+A000122(A237351(2*n+5))`
-/

namespace A296068.P989318162101795209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384900 n + A000122 (A237351 (2 * n + 5)).toNat

end

end A296068.P989318162101795209

/-!
# A296069: a(1)=0; thereafter a(n) is the smallest number (in absolute value) not yet in the sequence such that the arithmetic mean of the first n terms a(1), a(2), ..., a(n) is a nonzero integer. Preference is given to positive values of a(n).

The programs for A296069, the canonical program `A296069.P4127626150859250304` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296069 has offset 1).

The definition of A296069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296069.P8110077976828403008

`ogf((2x+3x^2+4x^3-x^4-2x^5)/(1+x-x^2-x^3))`
-/

namespace A296069.P8110077976828403008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 4, -1, -2] [1, 1, -1, -1] n

end

end A296069.P8110077976828403008

namespace A296069

/-- `ogf((2x+3x^2+4x^3-x^4-2x^5)/(1+x-x^2-x^3))` -/
def P8110077976828403008.Spec : Prop :=
  ∀ n, P8110077976828403008.a n = A296069 (n + 1)

end A296069

/-! ## A296069.P4127626150859250304

`Δ[n*(a(n-1)%2+1)]` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A296069

/-- `Δ[n*(a(n-1)%2+1)]` -/
def P4127626150859250304.Spec : Prop :=
  ∀ n, P4127626150859250304.a n = A296069 (n + 1)

theorem P4127626150859250304.correct : P4127626150859250304.Spec := by
  intro n
  simp only [A296069, Nat.add_sub_cancel]

end A296069

/-! ## A296069.P2393159102896901518

`Δ[2*n/gcd(2, a(n-1))]` with `a(0)=0, a(1)=0`
-/

namespace A296069.P2393159102896901518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (2 * n : ℚ) / (Int.gcd 2 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296069.P2393159102896901518

namespace A296069

/-- `Δ[2*n/gcd(2, a(n-1))]` -/
def P2393159102896901518.Spec : Prop :=
  ∀ n, P2393159102896901518.a n = (A296069 (n + 1) : ℚ)

end A296069

/-! ## A296069.P15865645011453105988

`Δ[n*gcd(n, a(n-1)+3)]` with `a(0)=0, a(1)=0`
-/

namespace A296069.P15865645011453105988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  n * Nat.gcd n (f1 (n - 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A296069.P15865645011453105988

namespace A296069

/-- `Δ[n*gcd(n, a(n-1)+3)]` -/
def P15865645011453105988.Spec : Prop :=
  ∀ n, P15865645011453105988.a n = A296069 (n + 1)

end A296069

/-! ## A296069.P16963927611376125073

`xor(n, (n-a(n-1))%2)+2` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A296069.P16963927611376125073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  Int.xor (n : ℤ) (Int.tmod ((n : ℤ) - a (n - 1)) 2) + 2

end

end A296069.P16963927611376125073

namespace A296069

/-- `xor(n, (n-a(n-1))%2)+2` -/
def P16963927611376125073.Spec : Prop :=
  ∀ n, P16963927611376125073.a n = A296069 (n + 1)

end A296069

/-! ## A296069.P4771379079393558003

`A296070(n+1)-A296070(A000007(n)+n)`
-/

namespace A296069.P4771379079393558003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296070 (n + 1) - A296070 (A000007 n + (n : ℤ)).toNat

end

end A296069.P4771379079393558003

namespace A296069

/-- `A296070(n+1)-A296070(A000007(n)+n)` -/
def P4771379079393558003.Spec : Prop :=
  ∀ n, P4771379079393558003.a n = A296069 (n + 1)

end A296069

/-! ## A296069.P7739985286504328894

`Δ[n*∑[A062157(xor(3, n))]]`
-/

namespace A296069.P7739985286504328894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (Nat.xor 3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296069.P7739985286504328894

namespace A296069

/-- `Δ[n*∑[A062157(xor(3, n))]]` -/
def P7739985286504328894.Spec : Prop :=
  ∀ n, P7739985286504328894.a n = A296069 (n + 1)

end A296069

/-! ## A296069.P12054791571622180588

`Δ[A093178(n+1)+n%A007323(n)]`
-/

namespace A296069.P12054791571622180588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 1) + Int.tmod (n : ℤ) (A007323 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296069.P12054791571622180588

namespace A296069

/-- `Δ[A093178(n+1)+n%A007323(n)]` -/
def P12054791571622180588.Spec : Prop :=
  ∀ n, P12054791571622180588.a n = A296069 (n + 1)

end A296069

/-!
# A296070: Partial sums of A296069.

The programs for A296070, the canonical program `A296070.P6640347725564009216` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296070 has offset 1).

The definition of A296070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296070.P6640347725564009216

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=8, a(4)=5, a(5)=12`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A296070

/-- `2*a(n-2)-a(n-4)` -/
def P6640347725564009216.Spec : Prop :=
  ∀ n, P6640347725564009216.a n = A296070 (n + 1)

theorem P6640347725564009216.correct : P6640347725564009216.Spec := by
  intro n
  simp only [A296070, Nat.add_sub_cancel]

end A296070

/-! ## A296070.P2634894857519222306

`4/a(n-1)*∑[n]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A296070.P2634894857519222306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  4 / a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A296070.P2634894857519222306

namespace A296070

/-- `4/a(n-1)*∑[n]` -/
def P2634894857519222306.Spec : Prop :=
  ∀ n, P2634894857519222306.a n = (A296070 (n + 1) : ℚ)

end A296070

/-! ## A296070.P2392534126612728049

`(n+1)*ceil(lcm(2, n)/(n+1))`
-/

namespace A296070.P2392534126612728049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(Nat.lcm 2 n : ℚ) / (n + 1 : ℚ)⌉

end

end A296070.P2392534126612728049

namespace A296070

/-- `(n+1)*ceil(lcm(2, n)/(n+1))` -/
def P2392534126612728049.Spec : Prop :=
  ∀ n, P2392534126612728049.a n = A296070 (n + 1)

end A296070

/-! ## A296070.P7901042442554300178

`(n+1)*gcd(2, a(n-2))` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A296070.P7901042442554300178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  (n + 1) * Nat.gcd 2 (a (n - 2))

end

end A296070.P7901042442554300178

namespace A296070

/-- `(n+1)*gcd(2, a(n-2))` -/
def P7901042442554300178.Spec : Prop :=
  ∀ n, (P7901042442554300178.a n : ℤ) = A296070 (n + 1)

end A296070

/-! ## A296070.P7294641061347895893

`(n+1)*(a(n-1)%2+1)` with `a(0)=0`
-/

namespace A296070.P7294641061347895893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) * (a (n - 1) % 2 + 1)

end

end A296070.P7294641061347895893

namespace A296070

/-- `(n+1)*(a(n-1)%2+1)` -/
def P7294641061347895893.Spec : Prop :=
  ∀ n, (P7294641061347895893.a n : ℤ) = A296070 (n + 1)

end A296070

/-! ## A296070.P17717658378805624066

`(and(1, a(n-1))+1)*(n+1)` with `a(0)=0`
-/

namespace A296070.P17717658378805624066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.land 1 (a (n - 1)) + 1) * (n + 1)

end

end A296070.P17717658378805624066

namespace A296070

/-- `(and(1, a(n-1))+1)*(n+1)` -/
def P17717658378805624066.Spec : Prop :=
  ∀ n, (P17717658378805624066.a n : ℤ) = A296070 (n + 1)

end A296070

/-! ## A296070.P17185804884605147

`(n+2)^and(1, a(n-1))+n` with `a(0)=0`
-/

namespace A296070.P17185804884605147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 2) ^ Nat.land 1 (a (n - 1)) + n

end

end A296070.P17185804884605147

namespace A296070

/-- `(n+2)^and(1, a(n-1))+n` -/
def P17185804884605147.Spec : Prop :=
  ∀ n, (P17185804884605147.a n : ℤ) = A296070 (n + 1)

end A296070

/-! ## A296070.P17334545933707311547

`C(n+2, and(1, a(n-1)))+n` with `a(0)=0`
-/

namespace A296070.P17334545933707311547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (n + 2) (Nat.land 1 (a (n - 1))) + n

end

end A296070.P17334545933707311547

namespace A296070

/-- `C(n+2, and(1, a(n-1)))+n` -/
def P17334545933707311547.Spec : Prop :=
  ∀ n, (P17334545933707311547.a n : ℤ) = A296070 (n + 1)

end A296070

/-! ## A296070.P7497912292780670078

`∑[ogf((2x+3x^2+4x^3-x^4-2x^5)/(1+x-x^2-x^3))]`
-/

namespace A296070.P7497912292780670078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 4, -1, -2] [1, 1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296070.P7497912292780670078

namespace A296070

/-- `∑[ogf((2x+3x^2+4x^3-x^4-2x^5)/(1+x-x^2-x^3))]` -/
def P7497912292780670078.Spec : Prop :=
  ∀ n, P7497912292780670078.a n = A296070 (n + 1)

end A296070

/-! ## A296070.P16956608453027965972

`2*(n+1)*n/a(n-1)` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A296070.P16956608453027965972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  2 * ((n + 1 : ℚ) * ((n : ℚ) / a (n - 1)))

end

end A296070.P16956608453027965972

namespace A296070

/-- `2*(n+1)*n/a(n-1)` -/
def P16956608453027965972.Spec : Prop :=
  ∀ n, P16956608453027965972.a n = (A296070 (n + 1) : ℚ)

end A296070

/-! ## A296070.P15039343337149298235

`C(n+1, a(n-1))+n+1` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A296070.P15039343337149298235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  Nat.choose (n + 1) (a (n - 1)) + (n + 1)

end

end A296070.P15039343337149298235

namespace A296070

/-- `C(n+1, a(n-1))+n+1` -/
def P15039343337149298235.Spec : Prop :=
  ∀ n, (P15039343337149298235.a n : ℤ) = A296070 (n + 1)

end A296070

/-! ## A296070.P13970522122965261781

`(n+1)/2^((2-a(n-1))%2)` with `a(0)=0`
-/

namespace A296070.P13970522122965261781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℚ) / (2 : ℚ) ^ (Int.tmod (SequenceMachineLib.roundAway (2 - a (n - 1))) 2 : ℤ)

end

end A296070.P13970522122965261781

namespace A296070

/-- `(n+1)/2^((2-a(n-1))%2)` -/
def P13970522122965261781.Spec : Prop :=
  ∀ n, P13970522122965261781.a n = (A296070 (n + 1) : ℚ)

end A296070

/-! ## A296070.P5032634573366168220

`gcd(n+2, (a(n-1)+1)%2)+n` with `a(0)=0`
-/

namespace A296070.P5032634573366168220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.gcd (n + 2) ((a (n - 1) + 1) % 2) + n

end

end A296070.P5032634573366168220

namespace A296070

/-- `gcd(n+2, (a(n-1)+1)%2)+n` -/
def P5032634573366168220.Spec : Prop :=
  ∀ n, (P5032634573366168220.a n : ℤ) = A296070 (n + 1)

end A296070

/-! ## A296070.P18324767960493458233

`lcm(n+1, and(1, a(n-1)))+n+1` with `a(0)=0`
-/

namespace A296070.P18324767960493458233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm (n + 1) (Nat.land 1 (a (n - 1))) + (n + 1)

end

end A296070.P18324767960493458233

namespace A296070

/-- `lcm(n+1, and(1, a(n-1)))+n+1` -/
def P18324767960493458233.Spec : Prop :=
  ∀ n, (P18324767960493458233.a n : ℤ) = A296070 (n + 1)

end A296070

/-! ## A296070.P8118262287476183012

`(n+1)*∑[floor(a(n-2))]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A296070.P8118262287476183012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1, -1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296070.P8118262287476183012

namespace A296070

/-- `(n+1)*∑[floor(a(n-2))]` -/
def P8118262287476183012.Spec : Prop :=
  ∀ n, P8118262287476183012.a n = A296070 (n + 1)

end A296070

/-! ## A296070.P13086742811987051639

`(n+1)*round(lcm(4, 2*n)/(2*n+1))`
-/

namespace A296070.P13086742811987051639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((Nat.lcm 4 (2 * n) : ℚ) / (2 * n + 1 : ℚ))

end

end A296070.P13086742811987051639

namespace A296070

/-- `(n+1)*round(lcm(4, 2*n)/(2*n+1))` -/
def P13086742811987051639.Spec : Prop :=
  ∀ n, P13086742811987051639.a n = A296070 (n + 1)

end A296070

/-! ## A296070.P6513990804521286379

`(n+1-C(n, n²))*gcd(n+1, n-1)`
-/

namespace A296070.P6513990804521286379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose n (n ^ 2) : ℤ)) * (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℤ)

end

end A296070.P6513990804521286379

namespace A296070

/-- `(n+1-C(n, n²))*gcd(n+1, n-1)` -/
def P6513990804521286379.Spec : Prop :=
  ∀ n, P6513990804521286379.a n = A296070 (n + 1)

end A296070

/-! ## A296070.P1479794234162485607

`lcm(n+2+n, a(n-1))/a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A296070.P1479794234162485607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  (Int.lcm (n + 2 + n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / a (n - 1)

end

end A296070.P1479794234162485607

namespace A296070

/-- `lcm(n+2+n, a(n-1))/a(n-1)` -/
def P1479794234162485607.Spec : Prop :=
  ∀ n, P1479794234162485607.a n = (A296070 (n + 1) : ℚ)

end A296070

/-! ## A296070.P3671534334376670841

`(n+1)*gcd(2*n, floor((n+1)²/(n+3)))`
-/

namespace A296070.P3671534334376670841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (2 * n : ℤ) ⌊((n + 1) ^ 2 : ℚ) / (n + 3 : ℚ)⌋

end

end A296070.P3671534334376670841

namespace A296070

/-- `(n+1)*gcd(2*n, floor((n+1)²/(n+3)))` -/
def P3671534334376670841.Spec : Prop :=
  ∀ n, (P3671534334376670841.a n : ℤ) = A296070 (n + 1)

end A296070

/-! ## A296070.P13358901128219513179

`(n+2+n)/gcd(a(n-1)+2, a(n-1))` with `a(0)=0`
-/

namespace A296070.P13358901128219513179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n + 2 + n : ℚ) / (Int.gcd (SequenceMachineLib.roundAway (a (n - 1) + 2)) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A296070.P13358901128219513179

namespace A296070

/-- `(n+2+n)/gcd(a(n-1)+2, a(n-1))` -/
def P13358901128219513179.Spec : Prop :=
  ∀ n, P13358901128219513179.a n = (A296070 (n + 1) : ℚ)

end A296070

/-!
# A296071: a(n) = Product_{d|n, d<n} A019565(A289813(A295882(d))); a product obtained from the 1's present in balanced ternary representation of the deficiencies of the proper divisors of n.

The programs for A296071, there is no canonical definition to state claims against.
-/

/-! ## A296071.P11183167395495602361

`A000005(or(A002517(n), A151281(n)))`
-/

namespace A296071.P11183167395495602361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A002517 n) (A151281 n)).toNat

end

end A296071.P11183167395495602361

/-!
# A296072: a(n) = Product_{d|n, d<n} A019565(A289814(A295882(d))); a product obtained from the -1's present in balanced ternary representation of the deficiencies of the proper divisors of n.

The programs for A296072, there is no canonical definition to state claims against.
-/

/-! ## A296072.P741557522440247840

`gcd(A065363(A000204(n+1)), A136494(n))`
-/

namespace A296072.P741557522440247840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065363 (A000204 (n + 1)).toNat) (A136494 n)

end

end A296072.P741557522440247840

/-! ## A296072.P11557726522055357631

`gcd(A004523(n)+1, A192933(A011117(n)))`
-/

namespace A296072.P11557726522055357631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004523 n + 1) (A192933 (A011117 n).toNat)

end

end A296072.P11557726522055357631

/-! ## A296072.P11945103903591791382

`gcd(A051022(A000204(n+1)), A214722(n))`
-/

namespace A296072.P11945103903591791382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051022 (A000204 (n + 1)).toNat) (A214722 n)

end

end A296072.P11945103903591791382

/-! ## A296072.P8028277194209172810

`gcd(A022099(n), A256608(A000204(n+1)))`
-/

namespace A296072.P8028277194209172810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022099 n) (A256608 (A000204 (n + 1)).toNat)

end

end A296072.P8028277194209172810

/-! ## A296072.P11883062314038091479

`gcd(A064614(n+1), A256607(A000032(n+1)))`
-/

namespace A296072.P11883062314038091479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064614 (n + 1)) (A256607 (A000032 (n + 1)).toNat)

end

end A296072.P11883062314038091479

/-!
# A296074: Sum of deficiencies of the proper divisors of n.

The programs for A296074, the canonical program `A296074.P13795180973919370839` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296074 has offset 1).

The definition of A296074 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296075, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A296074.P13795180973919370839

`A296075(n+1)-A033879(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A296074

/-- `A296075(n+1)-A033879(n+1)` -/
def P13795180973919370839.Spec : Prop :=
  ∀ n, P13795180973919370839.a n = A296074 (n + 1)

theorem P13795180973919370839.correct : P13795180973919370839.Spec := by
  intro n
  simp only [A296074, Nat.add_sub_cancel]

end A296074

/-! ## A296074.P429477116921123843

`∑{d}[n+1, A297159(#)]`
-/

namespace A296074.P429477116921123843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297159 d

end

end A296074.P429477116921123843

namespace A296074

/-- `∑{d}[n+1, A297159(#)]` -/
def P429477116921123843.Spec : Prop :=
  ∀ n, P429477116921123843.a n = A296074 (n + 1)

end A296074

/-! ## A296074.P17155936083571246103

`A296075(n+1)+A033880(n+1)`
-/

namespace A296074.P17155936083571246103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296075 (n + 1) + A033880 (n + 1)

end

end A296074.P17155936083571246103

namespace A296074

/-- `A296075(n+1)+A033880(n+1)` -/
def P17155936083571246103.Spec : Prop :=
  ∀ n, P17155936083571246103.a n = A296074 (n + 1)

end A296074

/-! ## A296074.P14890736295080432320

`A318447(n+1)+A292257(n+1)`
-/

namespace A296074.P14890736295080432320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318447 (n + 1) + A292257 (n + 1)

end

end A296074.P14890736295080432320

namespace A296074

/-- `A318447(n+1)+A292257(n+1)` -/
def P14890736295080432320.Spec : Prop :=
  ∀ n, P14890736295080432320.a n = A296074 (n + 1)

end A296074

/-! ## A296074.P844562109815132478

`A091818(n+1)-A211779(n+1)`
-/

namespace A296074.P844562109815132478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) - A211779 (n + 1)

end

end A296074.P844562109815132478

namespace A296074

/-- `A091818(n+1)-A211779(n+1)` -/
def P844562109815132478.Spec : Prop :=
  ∀ n, P844562109815132478.a n = A296074 (n + 1)

end A296074

/-! ## A296074.P16150363513502188053

`2*A001065(n+1)-A211779(n+1)`
-/

namespace A296074.P16150363513502188053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1) - A211779 (n + 1)

end

end A296074.P16150363513502188053

namespace A296074

/-- `2*A001065(n+1)-A211779(n+1)` -/
def P16150363513502188053.Spec : Prop :=
  ∀ n, P16150363513502188053.a n = A296074 (n + 1)

end A296074

/-! ## A296074.P5997037274722390466

`∑{d}[n+1, A032741(#)*A083254((n+1)/#)]`
-/

namespace A296074.P5997037274722390466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d * A083254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296074.P5997037274722390466

namespace A296074

/-- `∑{d}[n+1, A032741(#)*A083254((n+1)/#)]` -/
def P5997037274722390466.Spec : Prop :=
  ∀ n, P5997037274722390466.a n = A296074 (n + 1)

end A296074

/-! ## A296074.P14277147661572542260

`∑{d}[n+1, A001065(#)*A153881((n+1)/#)]`
-/

namespace A296074.P14277147661572542260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A153881 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296074.P14277147661572542260

namespace A296074

/-- `∑{d}[n+1, A001065(#)*A153881((n+1)/#)]` -/
def P14277147661572542260.Spec : Prop :=
  ∀ n, P14277147661572542260.a n = A296074 (n + 1)

end A296074

/-! ## A296074.P7072364692565925102

`∑{d}[n+1, A051953(#)*A378216((n+1)/#)]`
-/

namespace A296074.P7072364692565925102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A378216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296074.P7072364692565925102

namespace A296074

/-- `∑{d}[n+1, A051953(#)*A378216((n+1)/#)]` -/
def P7072364692565925102.Spec : Prop :=
  ∀ n, P7072364692565925102.a n = A296074 (n + 1)

end A296074

/-! ## A296074.P15884406436824243041

`∑{d}[n+1, A157658(#)*A296075((n+1)/#)]`
-/

namespace A296074.P15884406436824243041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A296075 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296074.P15884406436824243041

namespace A296074

/-- `∑{d}[n+1, A157658(#)*A296075((n+1)/#)]` -/
def P15884406436824243041.Spec : Prop :=
  ∀ n, P15884406436824243041.a n = A296074 (n + 1)

end A296074

/-! ## A296074.P5457865733944325607

`∑{d}[n+1, A033879(#)*A057427((n+1)/#-1)]`
-/

namespace A296074.P5457865733944325607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A057427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A296074.P5457865733944325607

namespace A296074

/-- `∑{d}[n+1, A033879(#)*A057427((n+1)/#-1)]` -/
def P5457865733944325607.Spec : Prop :=
  ∀ n, P5457865733944325607.a n = A296074 (n + 1)

end A296074

/-! ## A296074.P15136559601404352476

`∑{d}[n+1, A033880(#)*A057428((n+1)/#-1)]`
-/

namespace A296074.P15136559601404352476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033880 d * A057428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A296074.P15136559601404352476

namespace A296074

/-- `∑{d}[n+1, A033880(#)*A057428((n+1)/#-1)]` -/
def P15136559601404352476.Spec : Prop :=
  ∀ n, P15136559601404352476.a n = A296074 (n + 1)

end A296074

/-! ## A296074.P8655473588278352435

`A033880(n+1)+A318678(n+1)-A318679(n+1)`
-/

namespace A296074.P8655473588278352435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + (A318678 (n + 1) - A318679 (n + 1))

end

end A296074.P8655473588278352435

namespace A296074

/-- `A033880(n+1)+A318678(n+1)-A318679(n+1)` -/
def P8655473588278352435.Spec : Prop :=
  ∀ n, P8655473588278352435.a n = A296074 (n + 1)

end A296074

/-! ## A296074.P16099251739930045020

`A318678(n+1)-(A318679(n+1)+A033879(n+1))`
-/

namespace A296074.P16099251739930045020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1) - (A318679 (n + 1) + A033879 (n + 1))

end

end A296074.P16099251739930045020

namespace A296074

/-- `A318678(n+1)-(A318679(n+1)+A033879(n+1))` -/
def P16099251739930045020.Spec : Prop :=
  ∀ n, P16099251739930045020.a n = A296074 (n + 1)

end A296074

/-! ## A296074.P13564193189663625931

`A292257(n+1)+A318445(n+1)-A211779(n+1)`
-/

namespace A296074.P13564193189663625931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (n + 1) + (A318445 (n + 1) - A211779 (n + 1))

end

end A296074.P13564193189663625931

namespace A296074

/-- `A292257(n+1)+A318445(n+1)-A211779(n+1)` -/
def P13564193189663625931.Spec : Prop :=
  ∀ n, P13564193189663625931.a n = A296074 (n + 1)

end A296074

/-!
# A296075: Sum of deficiencies of divisors of n.

The programs for A296075, the canonical program `A296075.P11175105171194449082` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296075 has offset 1).

The definition of A296075 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A296075.P11546392937955039984

`A296074(n+1)+A033879(n+1)`
-/

namespace A296075.P11546392937955039984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296074 (n + 1) + A033879 (n + 1)

end

end A296075.P11546392937955039984

namespace A296075

/-- `A296074(n+1)+A033879(n+1)` -/
def P11546392937955039984.Spec : Prop :=
  ∀ n, P11546392937955039984.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P11175105171194449082

`A074400(n+1)-A007429(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A296075

/-- `A074400(n+1)-A007429(n+1)` -/
def P11175105171194449082.Spec : Prop :=
  ∀ n, P11175105171194449082.a n = A296075 (n + 1)

theorem P11175105171194449082.correct : P11175105171194449082.Spec := by
  intro n
  simp only [A296075, Nat.add_sub_cancel]

end A296075

/-! ## A296075.P8578858950070953580

`A000203(n+1)-A211779(n+1)`
-/

namespace A296075.P8578858950070953580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A211779 (n + 1)

end

end A296075.P8578858950070953580

namespace A296075

/-- `A000203(n+1)-A211779(n+1)` -/
def P8578858950070953580.Spec : Prop :=
  ∀ n, P8578858950070953580.a n = A296075 (n + 1)

theorem P8578858950070953580.correct : P8578858950070953580.Spec := by
  intro n
  simp only [A296075, Nat.add_sub_cancel, A296075.P8578858950070953580.a, A296075.P11175105171194449082.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A074400, A074400.P16312391460013478761.a, A211779, A211779.P11493622072280912374.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A296075

/-! ## A296075.P10569948001889975678

`A318678(n+1)-A318679(n+1)`
-/

namespace A296075.P10569948001889975678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1) - A318679 (n + 1)

end

end A296075.P10569948001889975678

namespace A296075

/-- `A318678(n+1)-A318679(n+1)` -/
def P10569948001889975678.Spec : Prop :=
  ∀ n, P10569948001889975678.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P11947911895012638279

`∑{d}[n+1, A033879(#)]`
-/

namespace A296075.P11947911895012638279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d

end

end A296075.P11947911895012638279

namespace A296075

/-- `∑{d}[n+1, A033879(#)]` -/
def P11947911895012638279.Spec : Prop :=
  ∀ n, P11947911895012638279.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P7196732226630941108

`∑{d}[n+1, #-A001065(#)]`
-/

namespace A296075.P7196732226630941108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A001065 d)

end

end A296075.P7196732226630941108

namespace A296075

/-- `∑{d}[n+1, #-A001065(#)]` -/
def P7196732226630941108.Spec : Prop :=
  ∀ n, P7196732226630941108.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P6991480199259616518

`∑{d}[n+1, 2*#-A000203(#)]`
-/

namespace A296075.P6991480199259616518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((2 * d : ℤ) - A000203 d)

end

end A296075.P6991480199259616518

namespace A296075

/-- `∑{d}[n+1, 2*#-A000203(#)]` -/
def P6991480199259616518.Spec : Prop :=
  ∀ n, P6991480199259616518.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P14664945772242813596

`∑{d}[n+1, #*A378216((n+1)/#)]`
-/

namespace A296075.P14664945772242813596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A378216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296075.P14664945772242813596

namespace A296075

/-- `∑{d}[n+1, #*A378216((n+1)/#)]` -/
def P14664945772242813596.Spec : Prop :=
  ∀ n, P14664945772242813596.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P2676305723785899133

`Δ[A160664(n)]-A211779(n+1)`
-/

namespace A296075.P2676305723785899133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A211779 (n + 1)

end

end A296075.P2676305723785899133

namespace A296075

/-- `Δ[A160664(n)]-A211779(n+1)` -/
def P2676305723785899133.Spec : Prop :=
  ∀ n, P2676305723785899133.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P13080323499758350928

`A318448(n+1)+A093653(n+1)`
-/

namespace A296075.P13080323499758350928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318448 (n + 1) + A093653 (n + 1)

end

end A296075.P13080323499758350928

namespace A296075

/-- `A318448(n+1)+A093653(n+1)` -/
def P13080323499758350928.Spec : Prop :=
  ∀ n, P13080323499758350928.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P16583198700526347872

`A296074(n+1)-A033880(n+1)`
-/

namespace A296075.P16583198700526347872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296074 (n + 1) - A033880 (n + 1)

end

end A296075.P16583198700526347872

namespace A296075

/-- `A296074(n+1)-A033880(n+1)` -/
def P16583198700526347872.Spec : Prop :=
  ∀ n, P16583198700526347872.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P9311361873202717912

`Δ[2*A160664(n)]-A007429(n+1)`
-/

namespace A296075.P9311361873202717912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007429 (n + 1)

end

end A296075.P9311361873202717912

namespace A296075

/-- `Δ[2*A160664(n)]-A007429(n+1)` -/
def P9311361873202717912.Spec : Prop :=
  ∀ n, P9311361873202717912.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P11896473788333557565

`2*A000203(n+1)-A007429(n+1)`
-/

namespace A296075.P11896473788333557565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A007429 (n + 1)

end

end A296075.P11896473788333557565

namespace A296075

/-- `2*A000203(n+1)-A007429(n+1)` -/
def P11896473788333557565.Spec : Prop :=
  ∀ n, P11896473788333557565.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P4727476026590400545

`A007429(n+1)-2*A211779(n+1)`
-/

namespace A296075.P4727476026590400545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - 2 * A211779 (n + 1)

end

end A296075.P4727476026590400545

namespace A296075

/-- `A007429(n+1)-2*A211779(n+1)` -/
def P4727476026590400545.Spec : Prop :=
  ∀ n, P4727476026590400545.a n = A296075 (n + 1)

theorem P4727476026590400545.correct : P4727476026590400545.Spec := by
  intro n
  simp only [A296075, Nat.add_sub_cancel, A296075.P4727476026590400545.a, A296075.P11175105171194449082.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A074400, A074400.P16312391460013478761.a, A211779, A211779.P11493622072280912374.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A296075

/-! ## A296075.P12960928735326845530

`∑{d}[n+1, A000005(#)*A083254((n+1)/#)]`
-/

namespace A296075.P12960928735326845530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A083254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296075.P12960928735326845530

namespace A296075

/-- `∑{d}[n+1, A000005(#)*A083254((n+1)/#)]` -/
def P12960928735326845530.Spec : Prop :=
  ∀ n, P12960928735326845530.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P1864396752906805771

`∑{d}[n+1, A000203(#)*A153881((n+1)/#)]`
-/

namespace A296075.P1864396752906805771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A153881 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296075.P1864396752906805771

namespace A296075

/-- `∑{d}[n+1, A000203(#)*A153881((n+1)/#)]` -/
def P1864396752906805771.Spec : Prop :=
  ∀ n, P1864396752906805771.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P10388450885070182268

`∑{d}[n+1, A023900(#)*A245212((n+1)/#)]`
-/

namespace A296075.P10388450885070182268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A245212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296075.P10388450885070182268

namespace A296075

/-- `∑{d}[n+1, A023900(#)*A245212((n+1)/#)]` -/
def P10388450885070182268.Spec : Prop :=
  ∀ n, P10388450885070182268.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P8588017378855082788

`∑{d}[n+1, A046970(#)*A245773((n+1)/#)]`
-/

namespace A296075.P8588017378855082788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A245773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296075.P8588017378855082788

namespace A296075

/-- `∑{d}[n+1, A046970(#)*A245773((n+1)/#)]` -/
def P8588017378855082788.Spec : Prop :=
  ∀ n, P8588017378855082788.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P16701205168551344423

`∑{d}[n+1, A002131(#)*A378218((n+1)/#)]`
-/

namespace A296075.P16701205168551344423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A378218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296075.P16701205168551344423

namespace A296075

/-- `∑{d}[n+1, A002131(#)*A378218((n+1)/#)]` -/
def P16701205168551344423.Spec : Prop :=
  ∀ n, P16701205168551344423.a n = A296075 (n + 1)

end A296075

/-! ## A296075.P15286044321448686848

`∑{d}[n+1, A007429(#)*A378225((n+1)/#)]`
-/

namespace A296075.P15286044321448686848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296075.P15286044321448686848

namespace A296075

/-- `∑{d}[n+1, A007429(#)*A378225((n+1)/#)]` -/
def P15286044321448686848.Spec : Prop :=
  ∀ n, P15286044321448686848.a n = A296075 (n + 1)

end A296075

/-!
# A296076: Least number with the same prime signature as 1 + A002322(n), where A002322 is Carmichael's lambda.

The programs for A296076, there is no canonical definition to state claims against.
-/

/-! ## A296076.P17445083567185353265

`A046523(A263027(n+1))`
-/

namespace A296076.P17445083567185353265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A263027 (n + 1)).toNat

end

end A296076.P17445083567185353265

/-! ## A296076.P9108988523660769412

`A046523(1+A002322(n+1))`
-/

namespace A296076.P9108988523660769412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (1 + A002322 (n + 1)).toNat

end

end A296076.P9108988523660769412

/-! ## A296076.P9843927913178602020

`A046523(2-A277127(n+1)+n)`
-/

namespace A296076.P9843927913178602020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (2 - A277127 (n + 1) + (n : ℤ)).toNat

end

end A296076.P9843927913178602020

/-! ## A296076.P407871975298104489

`A046523(A008864(n+1)-A104193(n+1))`
-/

namespace A296076.P407871975298104489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A008864 (n + 1) - A104193 (n + 1)).toNat

end

end A296076.P407871975298104489

/-! ## A296076.P1270041895276238139

`A046523(A039649(n+1)-A104194(n+1))`
-/

namespace A296076.P1270041895276238139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A039649 (n + 1) - A104194 (n + 1)).toNat

end

end A296076.P1270041895276238139

/-! ## A296076.P2866649938342459293

`A046523((A109606(n+1)+1)/A034380(n+1)+1)`
-/

namespace A296076.P2866649938342459293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A109606 (n + 1) + 1 : ℚ) / (A034380 (n + 1) : ℚ) + 1)).toNat

end

end A296076.P2866649938342459293

/-! ## A296076.P8115015300196808683

`A331083(A293524(A263027(n+1)²))`
-/

namespace A296076.P8115015300196808683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (A293524 (A263027 (n + 1) ^ 2).toNat).toNat

end

end A296076.P8115015300196808683

/-! ## A296076.P3658004339080374942

`A067824(A263027(n+1)%∑[A225950(n+2)])`
-/

namespace A296076.P3658004339080374942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (Int.tmod (A263027 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A296076.P3658004339080374942

/-! ## A296076.P8291432908547705635

`A069157((A002322(n+1)+1)²)`
-/

namespace A296076.P8291432908547705635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 ((A002322 (n + 1) + 1) ^ 2).toNat

end

end A296076.P8291432908547705635

/-! ## A296076.P16539266239161904780

`A066981(A032741(A263027(n+1)²))`
-/

namespace A296076.P16539266239161904780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066981 (A032741 (A263027 (n + 1) ^ 2).toNat).toNat

end

end A296076.P16539266239161904780

/-! ## A296076.P8029131103118874965

`A038548(A126286(A263027(n+1)²))`
-/

namespace A296076.P8029131103118874965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A126286 (A263027 (n + 1) ^ 2).toNat).toNat

end

end A296076.P8029131103118874965

/-!
# A296077: a(n) = 1 if 1 + A002322(n) is prime, 0 otherwise, where A002322 is Carmichael lambda.

The programs for A296077, there is no canonical definition to state claims against.
-/

/-! ## A296077.P7369600465138127127

`A010051(A263027(n+1))`
-/

namespace A296077.P7369600465138127127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A263027 (n + 1)).toNat

end

end A296077.P7369600465138127127

/-! ## A296077.P14731724409268993973

`A010051(1+A002322(n+1))`
-/

namespace A296077.P14731724409268993973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (1 + A002322 (n + 1)).toNat

end

end A296077.P14731724409268993973

/-! ## A296077.P12703798494540914870

`C(2, A296076(n+1))`
-/

namespace A296077.P12703798494540914870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A296076 (n + 1)).toNat

end

end A296077.P12703798494540914870

/-! ## A296077.P14087948194580230436

`char[A263028(n+1)-1]`
-/

namespace A296077.P14087948194580230436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263028 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296077.P14087948194580230436

/-! ## A296077.P10840274520758050595

`A010051(A296076(n+1))`
-/

namespace A296077.P10840274520758050595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A296076 (n + 1)).toNat

end

end A296077.P10840274520758050595

/-! ## A296077.P47965085926907719

`A080339(A002322(n+1)+1)`
-/

namespace A296077.P47965085926907719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A002322 (n + 1) + 1).toNat

end

end A296077.P47965085926907719

/-! ## A296077.P10365897936732544494

`A340371(A002322(n+1)+1)`
-/

namespace A296077.P10365897936732544494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (A002322 (n + 1) + 1).toNat

end

end A296077.P10365897936732544494

/-! ## A296077.P4195319632547378875

`A296212((A296076(n+1)/2)²)`
-/

namespace A296077.P4195319632547378875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296212 (SequenceMachineLib.roundAway (((A296076 (n + 1) : ℚ) / 2) ^ 2)).toNat

end

end A296077.P4195319632547378875

/-! ## A296077.P8715222865023815766

`A000045(floor(2/A296076(n+1)))`
-/

namespace A296077.P8715222865023815766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊2 / (A296076 (n + 1) : ℚ)⌋.toNat

end

end A296077.P8715222865023815766

/-! ## A296077.P6033408904414475340

`A000010(A296076(n+1)-1)%2`
-/

namespace A296077.P6033408904414475340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A296076 (n + 1) - 1).toNat) 2

end

end A296077.P6033408904414475340

/-! ## A296077.P4869097123891403965

`A010051(n+2-A277127(n+1))`
-/

namespace A296077.P4869097123891403965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((n + 2 : ℤ) - A277127 (n + 1)).toNat

end

end A296077.P4869097123891403965

/-! ## A296077.P3891527848937131032

`A135523(A013632(A002322(n+1)))`
-/

namespace A296077.P3891527848937131032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A013632 (A002322 (n + 1)).toNat).toNat

end

end A296077.P3891527848937131032

/-! ## A296077.P5768663800586493972

`A296212(A002322(A296076(n+1))²)`
-/

namespace A296077.P5768663800586493972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296212 (A002322 (A296076 (n + 1)).toNat ^ 2).toNat

end

end A296077.P5768663800586493972

/-! ## A296077.P14375900704933563225

`A000010(A000010(A296076(n+1)+1))%2`
-/

namespace A296077.P14375900704933563225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A000010 (A296076 (n + 1) + 1).toNat).toNat) 2

end

end A296077.P14375900704933563225

/-! ## A296077.P2848212211502771681

`A296212((1-A296076(n+1))²)`
-/

namespace A296077.P2848212211502771681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296212 ((1 - A296076 (n + 1)) ^ 2).toNat

end

end A296077.P2848212211502771681

/-! ## A296077.P10260350114952584274

`val(A296076(A296076(n+1)²), A296076(n+1))`
-/

namespace A296077.P10260350114952584274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A296076 (A296076 (n + 1) ^ 2).toNat).toNat (A296076 (n + 1)).toNat

end

end A296077.P10260350114952584274

/-! ## A296077.P6921041512490712388

`val(A296076(A000040(n+1)), A296076(n+1))`
-/

namespace A296077.P6921041512490712388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A296076 (A000040 (n + 1)).toNat).toNat (A296076 (n + 1)).toNat

end

end A296077.P6921041512490712388

/-! ## A296077.P6149691622038083175

`A296212(A039649(A296076(n+1)²))`
-/

namespace A296077.P6149691622038083175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296212 (A039649 (A296076 (n + 1) ^ 2).toNat).toNat

end

end A296077.P6149691622038083175

/-! ## A296077.P14219116585654627501

`A196020(A296076(n+1)²)`
-/

namespace A296077.P14219116585654627501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196020 (A296076 (n + 1) ^ 2).toNat

end

end A296077.P14219116585654627501

/-! ## A296077.P6687468133587649063

`A023531(A001222(A263027(n+1)²))`
-/

namespace A296077.P6687468133587649063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A001222 (A263027 (n + 1) ^ 2).toNat).toNat

end

end A296077.P6687468133587649063

/-!
# A296078: Least number with the same prime signature as 1+phi(n), where phi = A000010, Euler totient function.

The programs for A296078, the canonical program `A296078.P17180261108379153878` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296078 has offset 1).

The definition of A296078 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039649, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A296078.P17180261108379153878

`A046523(A039649(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A296078

/-- `A046523(A039649(n+1))` -/
def P17180261108379153878.Spec : Prop :=
  ∀ n, P17180261108379153878.a n = A296078 (n + 1)

theorem P17180261108379153878.correct : P17180261108379153878.Spec := by
  intro n
  simp only [A296078, Nat.add_sub_cancel]

end A296078

/-! ## A296078.P15122153648666378366

`A046523(1+A000010(n+1))`
-/

namespace A296078.P15122153648666378366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (1 + A000010 (n + 1)).toNat

end

end A296078.P15122153648666378366

namespace A296078

/-- `A046523(1+A000010(n+1))` -/
def P15122153648666378366.Spec : Prop :=
  ∀ n, P15122153648666378366.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P13781743285562623242

`A046523((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)`
-/

namespace A296078.P13781743285562623242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)).toNat

end

end A296078.P13781743285562623242

namespace A296078

/-- `A046523((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)` -/
def P13781743285562623242.Spec : Prop :=
  ∀ n, P13781743285562623242.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P16065855527637066247

`A336158(or(1, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1))`
-/

namespace A296078.P16065855527637066247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (Int.lor 1 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1))).toNat

end

end A296078.P16065855527637066247

namespace A296078

/-- `A336158(or(1, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1))` -/
def P16065855527637066247.Spec : Prop :=
  ∀ n, P16065855527637066247.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P7796826039643601007

`A046523(Δ[A002088(n)]+1)`
-/

namespace A296078.P7796826039643601007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (n + 1) - f1 n + 1).toNat

end

end A296078.P7796826039643601007

namespace A296078

/-- `A046523(Δ[A002088(n)]+1)` -/
def P7796826039643601007.Spec : Prop :=
  ∀ n, P7796826039643601007.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P6915207492462380482

`A046523(Δ[A005728(n)]+1)`
-/

namespace A296078.P6915207492462380482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (n + 1) - f1 n + 1).toNat

end

end A296078.P6915207492462380482

namespace A296078

/-- `A046523(Δ[A005728(n)]+1)` -/
def P6915207492462380482.Spec : Prop :=
  ∀ n, P6915207492462380482.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P113605464644560638

`A046523(A109606(n+1)+2)`
-/

namespace A296078.P113605464644560638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A109606 (n + 1) + 2).toNat

end

end A296078.P113605464644560638

namespace A296078

/-- `A046523(A109606(n+1)+2)` -/
def P113605464644560638.Spec : Prop :=
  ∀ n, P113605464644560638.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P8739690173446414354

`A046523(sqrt(A127473(n+1))+1)`
-/

namespace A296078.P8739690173446414354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ) + 1)).toNat

end

end A296078.P8739690173446414354

namespace A296078

/-- `A046523(sqrt(A127473(n+1))+1)` -/
def P8739690173446414354.Spec : Prop :=
  ∀ n, P8739690173446414354.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P12959943087279398087

`A046523(A349137(2*n+1)+1)`
-/

namespace A296078.P12959943087279398087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A349137 (2 * n + 1) + 1).toNat

end

end A296078.P12959943087279398087

namespace A296078

/-- `A046523(A349137(2*n+1)+1)` -/
def P12959943087279398087.Spec : Prop :=
  ∀ n, P12959943087279398087.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P13145842058064132390

`lcm(2, A336158(A000010(n+1)+1))`
-/

namespace A296078.P13145842058064132390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A336158 (A000010 (n + 1) + 1).toNat)

end

end A296078.P13145842058064132390

namespace A296078

/-- `lcm(2, A336158(A000010(n+1)+1))` -/
def P13145842058064132390.Spec : Prop :=
  ∀ n, (P13145842058064132390.a n : ℤ) = A296078 (n + 1)

end A296078

/-! ## A296078.P18199622575210194828

`A046523(2-A051953(n+1)+n)`
-/

namespace A296078.P18199622575210194828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (2 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A296078.P18199622575210194828

namespace A296078

/-- `A046523(2-A051953(n+1)+n)` -/
def P18199622575210194828.Spec : Prop :=
  ∀ n, P18199622575210194828.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P12320803908093678049

`A025487(A101296((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1))`
-/

namespace A296078.P12320803908093678049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)).toNat).toNat

end

end A296078.P12320803908093678049

namespace A296078

/-- `A025487(A101296((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1))` -/
def P12320803908093678049.Spec : Prop :=
  ∀ n, P12320803908093678049.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P6074599760648539191

`A181821(A181819((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1))`
-/

namespace A296078.P6074599760648539191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)).toNat).toNat

end

end A296078.P6074599760648539191

namespace A296078

/-- `A181821(A181819((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1))` -/
def P6074599760648539191.Spec : Prop :=
  ∀ n, P6074599760648539191.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P12442591345813550377

`A046523(A103391(A083254(n+1)+n+1))`
-/

namespace A296078.P12442591345813550377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A103391 (A083254 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A296078.P12442591345813550377

namespace A296078

/-- `A046523(A103391(A083254(n+1)+n+1))` -/
def P12442591345813550377.Spec : Prop :=
  ∀ n, P12442591345813550377.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P7021172737079780674

`A336158(A039649(n+1)+A019590(n+1))`
-/

namespace A296078.P7021172737079780674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A039649 (n + 1) + A019590 (n + 1)).toNat

end

end A296078.P7021172737079780674

namespace A296078

/-- `A336158(A039649(n+1)+A019590(n+1))` -/
def P7021172737079780674.Spec : Prop :=
  ∀ n, P7021172737079780674.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P5635869521700916231

`A046523(A002088(n+1)+1-A002088(n))`
-/

namespace A296078.P5635869521700916231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A002088 (n + 1) + (1 - A002088 n)).toNat

end

end A296078.P5635869521700916231

namespace A296078

/-- `A046523(A002088(n+1)+1-A002088(n))` -/
def P5635869521700916231.Spec : Prop :=
  ∀ n, P5635869521700916231.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P8427850928697553361

`A046523(A003557(n+1)*A173557(n+1)+1)`
-/

namespace A296078.P8427850928697553361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A003557 (n + 1) * A173557 (n + 1) + 1).toNat

end

end A296078.P8427850928697553361

namespace A296078

/-- `A046523(A003557(n+1)*A173557(n+1)+1)` -/
def P8427850928697553361.Spec : Prop :=
  ∀ n, P8427850928697553361.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P6658410713524515934

`A046523(1+Δ[A206297(n+1)/2])`
-/

namespace A296078.P6658410713524515934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206297 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway (1 + (f1 (n + 1) - f1 n))).toNat

end

end A296078.P6658410713524515934

namespace A296078

/-- `A046523(1+Δ[A206297(n+1)/2])` -/
def P6658410713524515934.Spec : Prop :=
  ∀ n, P6658410713524515934.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P18058765427749863196

`A069157((A000010(n+1)+1)²)`
-/

namespace A296078.P18058765427749863196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 ((A000010 (n + 1) + 1) ^ 2).toNat

end

end A296078.P18058765427749863196

namespace A296078

/-- `A069157((A000010(n+1)+1)²)` -/
def P18058765427749863196.Spec : Prop :=
  ∀ n, P18058765427749863196.a n = A296078 (n + 1)

end A296078

/-! ## A296078.P14626142104766545713

`A262095((A000010(n+1)+1)²)`
-/

namespace A296078.P14626142104766545713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262095 ((A000010 (n + 1) + 1) ^ 2).toNat

end

end A296078.P14626142104766545713

namespace A296078

/-- `A262095((A000010(n+1)+1)²)` -/
def P14626142104766545713.Spec : Prop :=
  ∀ n, P14626142104766545713.a n = A296078 (n + 1)

end A296078

/-!
# A296079: a(n) = 1 if 1+phi(n) is prime, 0 otherwise, where phi = A000010, Euler totient function.

The programs for A296079, the canonical program `A296079.P15018280529446540256` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296079 has offset 1).

The definition of A296079 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A039649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A296079.P15018280529446540256

`A010051(A039649(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A296079

/-- `A010051(A039649(n+1))` -/
def P15018280529446540256.Spec : Prop :=
  ∀ n, P15018280529446540256.a n = A296079 (n + 1)

theorem P15018280529446540256.correct : P15018280529446540256.Spec := by
  intro n
  simp only [A296079, Nat.add_sub_cancel]

end A296079

/-! ## A296079.P1377079222272582288

`A010051(1+A000010(n+1))`
-/

namespace A296079.P1377079222272582288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (1 + A000010 (n + 1)).toNat

end

end A296079.P1377079222272582288

namespace A296079

/-- `A010051(1+A000010(n+1))` -/
def P1377079222272582288.Spec : Prop :=
  ∀ n, P1377079222272582288.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P14591587593364298575

`C(2, A296078(n+1))`
-/

namespace A296079.P14591587593364298575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A296078 (n + 1)).toNat

end

end A296079.P14591587593364298575

namespace A296079

/-- `C(2, A296078(n+1))` -/
def P14591587593364298575.Spec : Prop :=
  ∀ n, (P14591587593364298575.a n : ℤ) = A296079 (n + 1)

end A296079

/-! ## A296079.P4892916955014320064

`floor(1/A072344(n+1))`
-/

namespace A296079.P4892916955014320064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A072344 (n + 1) : ℚ)⌋

end

end A296079.P4892916955014320064

namespace A296079

/-- `floor(1/A072344(n+1))` -/
def P4892916955014320064.Spec : Prop :=
  ∀ n, P4892916955014320064.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P366192701738213572

`char[A039698(n+1)-1]`
-/

namespace A296079.P366192701738213572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296079.P366192701738213572

namespace A296079

/-- `char[A039698(n+1)-1]` -/
def P366192701738213572.Spec : Prop :=
  ∀ n, (P366192701738213572.a n : ℤ) = A296079 (n + 1)

end A296079

/-! ## A296079.P1806435603013408175

`C(2, 2*A039651(n+1))`
-/

namespace A296079.P1806435603013408175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A039651 (n + 1)).toNat

end

end A296079.P1806435603013408175

namespace A296079

/-- `C(2, 2*A039651(n+1))` -/
def P1806435603013408175.Spec : Prop :=
  ∀ n, (P1806435603013408175.a n : ℤ) = A296079 (n + 1)

end A296079

/-! ## A296079.P9325060021331089905

`A010051((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)`
-/

namespace A296079.P9325060021331089905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)).toNat

end

end A296079.P9325060021331089905

namespace A296079

/-- `A010051((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)` -/
def P9325060021331089905.Spec : Prop :=
  ∀ n, P9325060021331089905.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P4174160473909752878

`A063524(A072344(n+1))`
-/

namespace A296079.P4174160473909752878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A072344 (n + 1)).toNat

end

end A296079.P4174160473909752878

namespace A296079

/-- `A063524(A072344(n+1))` -/
def P4174160473909752878.Spec : Prop :=
  ∀ n, P4174160473909752878.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P773681450892792105

`A063524(A072917(n+1))`
-/

namespace A296079.P773681450892792105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A072917 (n + 1)).toNat

end

end A296079.P773681450892792105

namespace A296079

/-- `A063524(A072917(n+1))` -/
def P773681450892792105.Spec : Prop :=
  ∀ n, P773681450892792105.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P4299517200914201464

`A000089(A296078(n+1))`
-/

namespace A296079.P4299517200914201464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A296078 (n + 1)).toNat

end

end A296079.P4299517200914201464

namespace A296079

/-- `A000089(A296078(n+1))` -/
def P4299517200914201464.Spec : Prop :=
  ∀ n, P4299517200914201464.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P8817025546378131286

`A061007(A000010(n+1)+1)`
-/

namespace A296079.P8817025546378131286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (A000010 (n + 1) + 1).toNat

end

end A296079.P8817025546378131286

namespace A296079

/-- `A061007(A000010(n+1)+1)` -/
def P8817025546378131286.Spec : Prop :=
  ∀ n, P8817025546378131286.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P16746077231179575416

`A080339(A000010(n+1)+1)`
-/

namespace A296079.P16746077231179575416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A000010 (n + 1) + 1).toNat

end

end A296079.P16746077231179575416

namespace A296079

/-- `A080339(A000010(n+1)+1)` -/
def P16746077231179575416.Spec : Prop :=
  ∀ n, P16746077231179575416.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P9871821919393024327

`A010051(A072917(n+1)+1)`
-/

namespace A296079.P9871821919393024327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A072917 (n + 1) + 1).toNat

end

end A296079.P9871821919393024327

namespace A296079

/-- `A010051(A072917(n+1)+1)` -/
def P9871821919393024327.Spec : Prop :=
  ∀ n, P9871821919393024327.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P2503266500646510495

`A105661(A000010(n+1)+1)`
-/

namespace A296079.P2503266500646510495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105661 (A000010 (n + 1) + 1).toNat

end

end A296079.P2503266500646510495

namespace A296079

/-- `A105661(A000010(n+1)+1)` -/
def P2503266500646510495.Spec : Prop :=
  ∀ n, P2503266500646510495.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P2310912841176544763

`A323152(A000010(n+1)+1)`
-/

namespace A296079.P2310912841176544763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323152 (A000010 (n + 1) + 1).toNat

end

end A296079.P2310912841176544763

namespace A296079

/-- `A323152(A000010(n+1)+1)` -/
def P2310912841176544763.Spec : Prop :=
  ∀ n, P2310912841176544763.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P5935774862814267589

`A323153(A000010(n+1)+1)`
-/

namespace A296079.P5935774862814267589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323153 (A000010 (n + 1) + 1).toNat

end

end A296079.P5935774862814267589

namespace A296079

/-- `A323153(A000010(n+1)+1)` -/
def P5935774862814267589.Spec : Prop :=
  ∀ n, P5935774862814267589.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P10480838788907814865

`A323513(A296078(n+1)+1)`
-/

namespace A296079.P10480838788907814865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323513 (A296078 (n + 1) + 1).toNat

end

end A296079.P10480838788907814865

namespace A296079

/-- `A323513(A296078(n+1)+1)` -/
def P10480838788907814865.Spec : Prop :=
  ∀ n, P10480838788907814865.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P13153865088470437689

`A010051(A109606(n+1)+2)`
-/

namespace A296079.P13153865088470437689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A109606 (n + 1) + 2).toNat

end

end A296079.P13153865088470437689

namespace A296079

/-- `A010051(A109606(n+1)+2)` -/
def P13153865088470437689.Spec : Prop :=
  ∀ n, P13153865088470437689.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P3586526293720933336

`A061358(A000010(n+1)+3)`
-/

namespace A296079.P3586526293720933336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A000010 (n + 1) + 3).toNat

end

end A296079.P3586526293720933336

namespace A296079

/-- `A061358(A000010(n+1)+3)` -/
def P3586526293720933336.Spec : Prop :=
  ∀ n, P3586526293720933336.a n = A296079 (n + 1)

end A296079

/-! ## A296079.P6812574279165773794

`A010051(2*A072344(n+1))`
-/

namespace A296079.P6812574279165773794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A072344 (n + 1)).toNat

end

end A296079.P6812574279165773794

namespace A296079

/-- `A010051(2*A072344(n+1))` -/
def P6812574279165773794.Spec : Prop :=
  ∀ n, P6812574279165773794.a n = A296079 (n + 1)

end A296079

/-!
# A296080: Restricted growth sequence transform of A289625(1+phi(n)), where phi = A000010, Euler totient function.

The programs for A296080, there is no canonical definition to state claims against.
-/

/-! ## A296080.P5593186904665515253

`A328666(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)%A345920(2*(n+2)))`
-/

namespace A296080.P5593186904665515253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328666 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)) (A345920 (2 * (n + 2)))).toNat

end

end A296080.P5593186904665515253

/-! ## A296080.P9999534605543598391

`A289507(A039649(n+1)%A131648(n+1))`
-/

namespace A296080.P9999534605543598391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289507 (Int.tmod (A039649 (n + 1)) (A131648 (n + 1))).toNat

end

end A296080.P9999534605543598391

/-! ## A296080.P9314458728672129058

`A289507(A000010(n+1)+1)%A001248(A016116(n))`
-/

namespace A296080.P9314458728672129058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289507 (A000010 (n + 1) + 1).toNat) (A001248 (A016116 n).toNat)

end

end A296080.P9314458728672129058

/-! ## A296080.P4410342194333380710

`A001222(A119753(n+1))*A289507(A000010(n+1)+1)`
-/

namespace A296080.P4410342194333380710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A119753 (n + 1)).toNat * A289507 (A000010 (n + 1) + 1).toNat

end

end A296080.P4410342194333380710

/-! ## A296080.P1926186411018652209

`A230980(A389616(2*(n+1))+A000010(n+1))`
-/

namespace A296080.P1926186411018652209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A389616 (2 * (n + 1)) + A000010 (n + 1)).toNat

end

end A296080.P1926186411018652209

/-!
# A296081: a(n) = gcd(tau(n)-1, sigma(n)-1), where tau = A000005 and sigma = A000203.

The programs for A296081, the canonical program `A296081.P5465156998017527787` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296081 has offset 1).

The definition of A296081 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, A039653, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A296081.P5465156998017527787

`gcd(A032741(n+1), A039653(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A296081

/-- `gcd(A032741(n+1), A039653(n+1))` -/
def P5465156998017527787.Spec : Prop :=
  ∀ n, (P5465156998017527787.a n : ℤ) = A296081 (n + 1)

theorem P5465156998017527787.correct : P5465156998017527787.Spec := by
  intro n
  simp only [A296081, Nat.add_sub_cancel]

end A296081

/-! ## A296081.P8120514807644168792

`gcd(A000005(n+1)-1, A000203(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A296081.P8120514807644168792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1) - 1) (A000203 (n + 1) - 1)

end

end A296081.P8120514807644168792

namespace A296081

/-- `gcd(A000005(n+1)-1, A000203(n+1)-1)` -/
def P8120514807644168792.Spec : Prop :=
  ∀ n, (P8120514807644168792.a n : ℤ) = A296081 (n + 1)

end A296081

/-! ## A296081.P16977709744035948577

`gcd(A065608(n+1), A152771(n+1))`
-/

namespace A296081.P16977709744035948577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065608 (n + 1)) (A152771 (n + 1))

end

end A296081.P16977709744035948577

namespace A296081

/-- `gcd(A065608(n+1), A152771(n+1))` -/
def P16977709744035948577.Spec : Prop :=
  ∀ n, (P16977709744035948577.a n : ℤ) = A296081 (n + 1)

end A296081

/-! ## A296081.P13364416740242061397

`gcd(1-A064840(n+1), A337297(n+1))`
-/

namespace A296081.P13364416740242061397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A064840 (n + 1)) (A337297 (n + 1))

end

end A296081.P13364416740242061397

namespace A296081

/-- `gcd(1-A064840(n+1), A337297(n+1))` -/
def P13364416740242061397.Spec : Prop :=
  ∀ n, (P13364416740242061397.a n : ℤ) = A296081 (n + 1)

end A296081

/-! ## A296081.P12961561732000275039

`gcd(A158901(n+1)-1, A032741(A000027(n+1)))`
-/

namespace A296081.P12961561732000275039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158901 (n + 1) - 1) (A032741 (A000027 (n + 1)).toNat)

end

end A296081.P12961561732000275039

namespace A296081

/-- `gcd(A158901(n+1)-1, A032741(A000027(n+1)))` -/
def P12961561732000275039.Spec : Prop :=
  ∀ n, (P12961561732000275039.a n : ℤ) = A296081 (n + 1)

end A296081

/-! ## A296081.P10943351191707158225

`∑{e}[A100577(n+1), #/A296082(n+1)]`
-/

namespace A296081.P10943351191707158225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / (A296082 (n + 1) : ℚ)

end

end A296081.P10943351191707158225

namespace A296081

/-- `∑{e}[A100577(n+1), #/A296082(n+1)]` -/
def P10943351191707158225.Spec : Prop :=
  ∀ n, P10943351191707158225.a n = (A296081 (n + 1) : ℚ)

end A296081

/-! ## A296081.P82852675768895009

`gcd(Δ[A320226(n)], A065608(n+1))`
-/

namespace A296081.P82852675768895009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A065608 (n + 1))

end

end A296081.P82852675768895009

namespace A296081

/-- `gcd(Δ[A320226(n)], A065608(n+1))` -/
def P82852675768895009.Spec : Prop :=
  ∀ n, (P82852675768895009.a n : ℤ) = A296081 (n + 1)

end A296081

/-!
# A296082: a(1) = 0; for n > 1, a(n) = A032741(n) / gcd(A039653(n),A032741(n)).

The programs for A296082, the canonical program `A296082.P6565057320872565321` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296082 has offset 1).

The definition of A296082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296082.P6565057320872565321

`∑{e}[A100577(n+1), #/A296081(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A296082

/-- `∑{e}[A100577(n+1), #/A296081(n+1)]` -/
def P6565057320872565321.Spec : Prop :=
  ∀ n, P6565057320872565321.a n = (A296082 (n + 1) : ℚ)

end A296082

/-! ## A296082.P16750595144506678122

`A140708(n+1)%A029578(A334954(n+1))`
-/

namespace A296082.P16750595144506678122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140708 (n + 1)) (A029578 (A334954 (n + 1)).toNat)

end

end A296082.P16750595144506678122

namespace A296082

/-- `A140708(n+1)%A029578(A334954(n+1))` -/
def P16750595144506678122.Spec : Prop :=
  ∀ n, P16750595144506678122.a n = A296082 (n + 1)

end A296082

/-! ## A296082.P2370589689914082672

`A322475(A321701(n+2))%A000005(n+1)`
-/

namespace A296082.P2370589689914082672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322475 (A321701 (n + 2)).toNat) (A000005 (n + 1))

end

end A296082.P2370589689914082672

namespace A296082

/-- `A322475(A321701(n+2))%A000005(n+1)` -/
def P2370589689914082672.Spec : Prop :=
  ∀ n, P2370589689914082672.a n = A296082 (n + 1)

end A296082

/-! ## A296082.P1330319326542211342

`A001913(A174346(n+1))%∏{e}[n+1, #+1]`
-/

namespace A296082.P1330319326542211342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001913 (A174346 (n + 1)).toNat) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A296082.P1330319326542211342

namespace A296082

/-- `A001913(A174346(n+1))%∏{e}[n+1, #+1]` -/
def P1330319326542211342.Spec : Prop :=
  ∀ n, P1330319326542211342.a n = A296082 (n + 1)

end A296082

/-! ## A296082.P14570830429829840574

`A003064(A344875(n+5))%A000005(n+1)`
-/

namespace A296082.P14570830429829840574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003064 (A344875 (n + 5)).toNat) (A000005 (n + 1))

end

end A296082.P14570830429829840574

namespace A296082

/-- `A003064(A344875(n+5))%A000005(n+1)` -/
def P14570830429829840574.Spec : Prop :=
  ∀ n, P14570830429829840574.a n = A296082 (n + 1)

end A296082

/-!
# A296083: a(1) = 0; for n > 1, a(n) = A039653(n) / gcd(A039653(n),A032741(n)).

The programs for A296083, the canonical program `A296083.P6935362212108863333` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296083 has offset 1).

The definition of A296083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296083.P6935362212108863333

`A039653(n+1)/A028310(A296081(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A296083

/-- `A039653(n+1)/A028310(A296081(n+1))` -/
def P6935362212108863333.Spec : Prop :=
  ∀ n, P6935362212108863333.a n = (A296083 (n + 1) : ℚ)

end A296083

/-! ## A296083.P9982199041776058704

`A039653(n+1)/A000034(A308328(n+1))`
-/

namespace A296083.P9982199041776058704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) : ℚ) / (A000034 (A308328 (n + 1)).toNat : ℚ)

end

end A296083.P9982199041776058704

namespace A296083

/-- `A039653(n+1)/A000034(A308328(n+1))` -/
def P9982199041776058704.Spec : Prop :=
  ∀ n, P9982199041776058704.a n = (A296083 (n + 1) : ℚ)

end A296083

/-! ## A296083.P3038328117269454717

`A000203(n+1)-A136212(A204060(n+1))`
-/

namespace A296083.P3038328117269454717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A136212 (A204060 (n + 1)).toNat

end

end A296083.P3038328117269454717

namespace A296083

/-- `A000203(n+1)-A136212(A204060(n+1))` -/
def P3038328117269454717.Spec : Prop :=
  ∀ n, P3038328117269454717.a n = A296083 (n + 1)

end A296083

/-! ## A296083.P15157423070490935489

`A039653(n+1)/A183017(A124859(n+1))`
-/

namespace A296083.P15157423070490935489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) : ℚ) / (A183017 (A124859 (n + 1)).toNat : ℚ)

end

end A296083.P15157423070490935489

namespace A296083

/-- `A039653(n+1)/A183017(A124859(n+1))` -/
def P15157423070490935489.Spec : Prop :=
  ∀ n, P15157423070490935489.a n = (A296083 (n + 1) : ℚ)

end A296083

/-! ## A296083.P10560434015271613080

`A005520(A008576(3*n)+1)%A000203(n+1)`
-/

namespace A296083.P10560434015271613080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005520 (A008576 (3 * n) + 1).toNat) (A000203 (n + 1))

end

end A296083.P10560434015271613080

namespace A296083

/-- `A005520(A008576(3*n)+1)%A000203(n+1)` -/
def P10560434015271613080.Spec : Prop :=
  ∀ n, P10560434015271613080.a n = A296083 (n + 1)

end A296083

/-!
# A296084: a(1) = 0 and for n > 1, a(n) = 1 if tau(n)-1 divides sigma(n)-1, 0 otherwise. Here tau = A000005, sigma = A000203.

The programs for A296084, the canonical program `A296084.P5567096927429281005` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296084 has offset 1).

The definition of A296084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296084.P271795433725193669

`char[A284288(n+1)-1]`
-/

namespace A296084.P271795433725193669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284288 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296084.P271795433725193669

namespace A296084

/-- `char[A284288(n+1)-1]` -/
def P271795433725193669.Spec : Prop :=
  ∀ n, (P271795433725193669.a n : ℤ) = A296084 (n + 1)

end A296084

/-! ## A296084.P15142094004372004201

`char[eq[1, A296082(n+1)]]`
-/

namespace A296084.P15142094004372004201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296082 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A296084.P15142094004372004201

namespace A296084

/-- `char[eq[1, A296082(n+1)]]` -/
def P15142094004372004201.Spec : Prop :=
  ∀ n, (P15142094004372004201.a n : ℤ) = A296084 (n + 1)

end A296084

/-! ## A296084.P12888631880888988500

`A091225(2*A296082(n+1))`
-/

namespace A296084.P12888631880888988500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * A296082 (n + 1)).toNat

end

end A296084.P12888631880888988500

namespace A296084

/-- `A091225(2*A296082(n+1))` -/
def P12888631880888988500.Spec : Prop :=
  ∀ n, P12888631880888988500.a n = A296084 (n + 1)

end A296084

/-! ## A296084.P14223013381821382094

`A091225(A296082(n+1)²+1)`
-/

namespace A296084.P14223013381821382094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A296082 (n + 1) ^ 2 + 1).toNat

end

end A296084.P14223013381821382094

namespace A296084

/-- `A091225(A296082(n+1)²+1)` -/
def P14223013381821382094.Spec : Prop :=
  ∀ n, P14223013381821382094.a n = A296084 (n + 1)

end A296084

/-! ## A296084.P5567096927429281005

`A121373((A296082(n+1)+9)²)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A296084

/-- `A121373((A296082(n+1)+9)²)` -/
def P5567096927429281005.Spec : Prop :=
  ∀ n, P5567096927429281005.a n = A296084 (n + 1)

theorem P5567096927429281005.correct : P5567096927429281005.Spec := by
  intro n
  simp only [A296084, Nat.add_sub_cancel]

end A296084

/-! ## A296084.P9164453865620888926

`round(A296081(n+1)/A000005(n+1))`
-/

namespace A296084.P9164453865620888926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A296081 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))

end

end A296084.P9164453865620888926

namespace A296084

/-- `round(A296081(n+1)/A000005(n+1))` -/
def P9164453865620888926.Spec : Prop :=
  ∀ n, P9164453865620888926.a n = A296084 (n + 1)

end A296084

/-! ## A296084.P13784434554542980523

`val(A014787(A296082(n+1)+n), A014787(n+1))`
-/

namespace A296084.P13784434554542980523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014787 (A296082 (n + 1) + (n : ℤ)).toNat).toNat (A014787 (n + 1)).toNat

end

end A296084.P13784434554542980523

namespace A296084

/-- `val(A014787(A296082(n+1)+n), A014787(n+1))` -/
def P13784434554542980523.Spec : Prop :=
  ∀ n, (P13784434554542980523.a n : ℤ) = A296084 (n + 1)

end A296084

/-! ## A296084.P15975827374519490683

`val(A214047(A296082(n+1)+n+1), A214047(n+2))`
-/

namespace A296084.P15975827374519490683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A214047 (A296082 (n + 1) + (n : ℤ) + 1).toNat).toNat (A214047 (n + 2)).toNat

end

end A296084.P15975827374519490683

namespace A296084

/-- `val(A214047(A296082(n+1)+n+1), A214047(n+2))` -/
def P15975827374519490683.Spec : Prop :=
  ∀ n, (P15975827374519490683.a n : ℤ) = A296084 (n + 1)

end A296084

/-! ## A296084.P10562429400412660802

`A296066(2^A296082(n+1))`
-/

namespace A296084.P10562429400412660802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296066 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A296082 (n + 1) : ℤ))).toNat

end

end A296084.P10562429400412660802

namespace A296084

/-- `A296066(2^A296082(n+1))` -/
def P10562429400412660802.Spec : Prop :=
  ∀ n, P10562429400412660802.a n = A296084 (n + 1)

end A296084

/-! ## A296084.P1820792586778280815

`A010054(A296082(n+1)²²+2)`
-/

namespace A296084.P1820792586778280815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((A296082 (n + 1) ^ 2) ^ 2 + 2).toNat

end

end A296084.P1820792586778280815

namespace A296084

/-- `A010054(A296082(n+1)²²+2)` -/
def P1820792586778280815.Spec : Prop :=
  ∀ n, P1820792586778280815.a n = A296084 (n + 1)

end A296084

/-!
# A296085: Filter sequence combining A296078(n) and A296092(n), the prime signatures of 1+phi(n) and 1+sigma(n).

The programs for A296085, there is no canonical definition to state claims against.
-/

/-! ## A296085.P17573898741605766371

`A368414(A250120(n)+A049537(n+1))`
-/

namespace A296085.P17573898741605766371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368414 (A250120 n + A049537 (n + 1)).toNat

end

end A296085.P17573898741605766371

/-! ## A296085.P3923427803015278228

`A316436((∑{d}[n+1, #]+1)%A177220(n+1))`
-/

namespace A296085.P3923427803015278228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℤ) (A177220 (n + 1))).toNat

end

end A296085.P3923427803015278228

/-! ## A296085.P7173283776319174919

`A339991(A296092(n+1)%A296059(n+1))`
-/

namespace A296085.P7173283776319174919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339991 (Int.tmod (A296092 (n + 1)) (A296059 (n + 1))).toNat

end

end A296085.P7173283776319174919

/-! ## A296085.P10787437382814926153

`gcd(A000217(A002386(n+1)), A061775(n+1))`
-/

namespace A296085.P10787437382814926153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A002386 (n + 1)).toNat) (A061775 (n + 1))

end

end A296085.P10787437382814926153

/-! ## A296085.P16429995450289729594

`gcd(A200738(n+1), A285954(A162693(n+1)))`
-/

namespace A296085.P16429995450289729594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A200738 (n + 1)) (A285954 (A162693 (n + 1)).toNat)

end

end A296085.P16429995450289729594

/-!
# A296090: Filter combining the sum of divisors (A000203) and prime-signature (A101296) of n; restricted growth sequence transform of A286360.

The programs for A296090, there is no canonical definition to state claims against.
-/

/-! ## A296090.P4232690069553014900

`A295880(n+1)*A295924(A140212(n+1))`
-/

namespace A296090.P4232690069553014900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295880 (n + 1) * A295924 (A140212 (n + 1)).toNat

end

end A296090.P4232690069553014900

/-! ## A296090.P7346771175683901651

`A295880(n+1)+A000007(A163511(n))`
-/

namespace A296090.P7346771175683901651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295880 (n + 1) + A000007 (A163511 n).toNat

end

end A296090.P7346771175683901651

/-! ## A296090.P4759155334833429517

`gcd(A295880(n+1), A317839(A390755(n+1)))`
-/

namespace A296090.P4759155334833429517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A295880 (n + 1)) (A317839 (A390755 (n + 1)).toNat)

end

end A296090.P4759155334833429517

/-! ## A296090.P14685359546854369726

`A295880(n+1)+A000007(A055998(n+9)-8)`
-/

namespace A296090.P14685359546854369726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295880 (n + 1) + A000007 (A055998 (n + 9) - 8).toNat

end

end A296090.P14685359546854369726

/-! ## A296090.P11307181231774388864

`A295880(n+1)+A257000(A016742(n))`
-/

namespace A296090.P11307181231774388864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295880 (n + 1) + A257000 (A016742 n).toNat

end

end A296090.P11307181231774388864

/-! ## A296090.P2034114003857957678

`A353479(A271054(n))+A295880(n+1)`
-/

namespace A296090.P2034114003857957678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353479 (A271054 n).toNat + A295880 (n + 1)

end

end A296090.P2034114003857957678

/-! ## A296090.P3407647083197338911

`A295880(n+1)%A043980(A245612(n))`
-/

namespace A296090.P3407647083197338911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295880 (n + 1)) (A043980 (A245612 n).toNat)

end

end A296090.P3407647083197338911

/-! ## A296090.P15513591639402695451

`A295880(n+1)*A295924(A035141(n+1))`
-/

namespace A296090.P15513591639402695451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295880 (n + 1) * A295924 (A035141 (n + 1)).toNat

end

end A296090.P15513591639402695451

/-! ## A296090.P2858962116460869666

`A008683(A046402(n+1))*A295880(n+1)`
-/

namespace A296090.P2858962116460869666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A046402 (n + 1)).toNat * A295880 (n + 1)

end

end A296090.P2858962116460869666

/-! ## A296090.P14462099853811758752

`A295880(n+1)+A033716(A005899(n+2))`
-/

namespace A296090.P14462099853811758752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295880 (n + 1) + A033716 (A005899 (n + 2)).toNat

end

end A296090.P14462099853811758752

/-! ## A296090.P13576872102610195519

`and(A295880(n+1), A381707(n+1))`
-/

namespace A296090.P13576872102610195519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A295880 (n + 1)) (A381707 (n + 1))

end

end A296090.P13576872102610195519

/-! ## A296090.P4547129093074310151

`A295880(n+1)+A010051(A229295(n+1))`
-/

namespace A296090.P4547129093074310151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295880 (n + 1) + A010051 (A229295 (n + 1)).toNat

end

end A296090.P4547129093074310151

/-! ## A296090.P12935162658139836450

`A295880(n+1)+A049084(A096173(2*(n+2)))`
-/

namespace A296090.P12935162658139836450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295880 (n + 1) + A049084 (A096173 (2 * (n + 2))).toNat

end

end A296090.P12935162658139836450

/-! ## A296090.P12425104169703887766

`A295880(n+1)+A073424(A046151(n+5))`
-/

namespace A296090.P12425104169703887766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295880 (n + 1) + A073424 (A046151 (n + 5)).toNat

end

end A296090.P12425104169703887766

/-!
# A296091: a(1) = 1 and for n > 1, the least number with the same prime signature as sigma(n)-1.

The programs for A296091, the canonical program `A296091.P13251627678170012105` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296091 has offset 1).

The definition of A296091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296091.P13251627678170012105

`A046523(A173455(n+1)+n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A296091

/-- `A046523(A173455(n+1)+n)` -/
def P13251627678170012105.Spec : Prop :=
  ∀ n, P13251627678170012105.a n = A296091 (n + 1)

theorem P13251627678170012105.correct : P13251627678170012105.Spec := by
  intro n
  simp only [A296091, Nat.add_sub_cancel]

end A296091

/-! ## A296091.P8083437568576737089

`A046523(A048050(n+1)+1+n)`
-/

namespace A296091.P8083437568576737089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A048050 (n + 1) + 1 + (n : ℤ)).toNat

end

end A296091.P8083437568576737089

namespace A296091

/-- `A046523(A048050(n+1)+1+n)` -/
def P8083437568576737089.Spec : Prop :=
  ∀ n, P8083437568576737089.a n = A296091 (n + 1)

end A296091

/-! ## A296091.P15758689254803929878

`A046523(floor(A000203(n+1)-n/(n+1)))`
-/

namespace A296091.P15758689254803929878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ⌊(A000203 (n + 1) : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A296091.P15758689254803929878

namespace A296091

/-- `A046523(floor(A000203(n+1)-n/(n+1)))` -/
def P15758689254803929878.Spec : Prop :=
  ∀ n, P15758689254803929878.a n = A296091 (n + 1)

end A296091

/-! ## A296091.P6286186487415945624

`A046523(A028310(n)+A001065(n+1))`
-/

namespace A296091.P6286186487415945624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A028310 n + A001065 (n + 1)).toNat

end

end A296091.P6286186487415945624

namespace A296091

/-- `A046523(A028310(n)+A001065(n+1))` -/
def P6286186487415945624.Spec : Prop :=
  ∀ n, P6286186487415945624.a n = A296091 (n + 1)

end A296091

/-! ## A296091.P10720685494486893140

`A046523(A000203(n+1)-A057427(n))`
-/

namespace A296091.P10720685494486893140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000203 (n + 1) - A057427 n).toNat

end

end A296091.P10720685494486893140

namespace A296091

/-- `A046523(A000203(n+1)-A057427(n))` -/
def P10720685494486893140.Spec : Prop :=
  ∀ n, P10720685494486893140.a n = A296091 (n + 1)

end A296091

/-! ## A296091.P16807680176256720351

`A046523(A004277(n)-A235796(n+1))`
-/

namespace A296091.P16807680176256720351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A004277 n - A235796 (n + 1)).toNat

end

end A296091.P16807680176256720351

namespace A296091

/-- `A046523(A004277(n)-A235796(n+1))` -/
def P16807680176256720351.Spec : Prop :=
  ∀ n, P16807680176256720351.a n = A296091 (n + 1)

end A296091

/-! ## A296091.P13039529293769329881

`A046523(A155085(n+1)-(n+1)-A057427(n))`
-/

namespace A296091.P13039529293769329881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A155085 (n + 1) - (n + 1 : ℤ) - A057427 n).toNat

end

end A296091.P13039529293769329881

namespace A296091

/-- `A046523(A155085(n+1)-(n+1)-A057427(n))` -/
def P13039529293769329881.Spec : Prop :=
  ∀ n, P13039529293769329881.a n = A296091 (n + 1)

end A296091

/-! ## A296091.P14183730214858188746

`A046523(A064987(n+1)/(n+1)-A057427(n))`
-/

namespace A296091.P14183730214858188746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A057427 n : ℚ))).toNat

end

end A296091.P14183730214858188746

namespace A296091

/-- `A046523(A064987(n+1)/(n+1)-A057427(n))` -/
def P14183730214858188746.Spec : Prop :=
  ∀ n, P14183730214858188746.a n = A296091 (n + 1)

end A296091

/-! ## A296091.P48016298035670095

`A046523((A000203(n+1)-2)%A000203(n+1)+1)`
-/

namespace A296091.P48016298035670095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.tmod (A000203 (n + 1) - 2) (A000203 (n + 1)) + 1).toNat

end

end A296091.P48016298035670095

namespace A296091

/-- `A046523((A000203(n+1)-2)%A000203(n+1)+1)` -/
def P48016298035670095.Spec : Prop :=
  ∀ n, P48016298035670095.a n = A296091 (n + 1)

end A296091

/-! ## A296091.P6974516713117859945

`A046523(A000203(n+1)-gcd(2, A046523(n+1))+1)`
-/

namespace A296091.P6974516713117859945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000203 (n + 1) - (Int.gcd 2 (A046523 (n + 1)) : ℤ) + 1).toNat

end

end A296091.P6974516713117859945

namespace A296091

/-- `A046523(A000203(n+1)-gcd(2, A046523(n+1))+1)` -/
def P6974516713117859945.Spec : Prop :=
  ∀ n, P6974516713117859945.a n = A296091 (n + 1)

end A296091

/-!
# A296092: Least number with the same prime signature as sigma(n)+1.

The programs for A296092, the canonical program `A296092.P4566598695325017882` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296092 has offset 1).

The definition of A296092 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A296092.P4566598695325017882

`A046523(A088580(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A296092

/-- `A046523(A088580(n+1))` -/
def P4566598695325017882.Spec : Prop :=
  ∀ n, P4566598695325017882.a n = A296092 (n + 1)

theorem P4566598695325017882.correct : P4566598695325017882.Spec := by
  intro n
  simp only [A296092, Nat.add_sub_cancel]

end A296092

/-! ## A296092.P9569692440658955828

`A046523(1+A000203(n+1))`
-/

namespace A296092.P9569692440658955828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (1 + A000203 (n + 1)).toNat

end

end A296092.P9569692440658955828

namespace A296092

/-- `A046523(1+A000203(n+1))` -/
def P9569692440658955828.Spec : Prop :=
  ∀ n, P9569692440658955828.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P8187894165083024635

`A025487(A101296(∑{d}[n+1, #]+1))`
-/

namespace A296092.P8187894165083024635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∑ d ∈ Nat.divisors (f1 n), d + 1)).toNat

end

end A296092.P8187894165083024635

namespace A296092

/-- `A025487(A101296(∑{d}[n+1, #]+1))` -/
def P8187894165083024635.Spec : Prop :=
  ∀ n, P8187894165083024635.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P12839373032015561698

`A046523(∑{d}[n+1, #]+1)`
-/

namespace A296092.P12839373032015561698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A296092.P12839373032015561698

namespace A296092

/-- `A046523(∑{d}[n+1, #]+1)` -/
def P12839373032015561698.Spec : Prop :=
  ∀ n, P12839373032015561698.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P9870861533273001369

`A046523(A039653(n+1)+2)`
-/

namespace A296092.P9870861533273001369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A039653 (n + 1) + 2).toNat

end

end A296092.P9870861533273001369

namespace A296092

/-- `A046523(A039653(n+1)+2)` -/
def P9870861533273001369.Spec : Prop :=
  ∀ n, P9870861533273001369.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P718807172587077701

`A046523(A155085(n+1)-n)`
-/

namespace A296092.P718807172587077701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A155085 (n + 1) - (n : ℤ)).toNat

end

end A296092.P718807172587077701

namespace A296092

/-- `A046523(A155085(n+1)-n)` -/
def P718807172587077701.Spec : Prop :=
  ∀ n, P718807172587077701.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P6452340774418643523

`A046523(sqrt(A072861(n+1))+1)`
-/

namespace A296092.P6452340774418643523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ) + 1)).toNat

end

end A296092.P6452340774418643523

namespace A296092

/-- `A046523(sqrt(A072861(n+1))+1)` -/
def P6452340774418643523.Spec : Prop :=
  ∀ n, P6452340774418643523.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P12256328186048253107

`A046523(A001065(n+1)+2+n)`
-/

namespace A296092.P12256328186048253107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A001065 (n + 1) + 2 + (n : ℤ)).toNat

end

end A296092.P12256328186048253107

namespace A296092

/-- `A046523(A001065(n+1)+2+n)` -/
def P12256328186048253107.Spec : Prop :=
  ∀ n, P12256328186048253107.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P4318244659062173194

`A046523(A173455(n+1)+2+n)`
-/

namespace A296092.P4318244659062173194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A173455 (n + 1) + 2 + (n : ℤ)).toNat

end

end A296092.P4318244659062173194

namespace A296092

/-- `A046523(A173455(n+1)+2+n)` -/
def P4318244659062173194.Spec : Prop :=
  ∀ n, P4318244659062173194.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P3018788644763518252

`A181821(A181819(∑{d}[n+1, #]+1))`
-/

namespace A296092.P3018788644763518252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (∑ d ∈ Nat.divisors (f1 n), d + 1)).toNat

end

end A296092.P3018788644763518252

namespace A296092

/-- `A181821(A181819(∑{d}[n+1, #]+1))` -/
def P3018788644763518252.Spec : Prop :=
  ∀ n, P3018788644763518252.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P8966136334707191679

`A046523(1+A064987(n+1)/(n+1))`
-/

namespace A296092.P8966136334707191679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway (1 + (A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A296092.P8966136334707191679

namespace A296092

/-- `A046523(1+A064987(n+1)/(n+1))` -/
def P8966136334707191679.Spec : Prop :=
  ∀ n, P8966136334707191679.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P13640663758683776699

`A046523(A325816(n+1)+A324213(n+1))`
-/

namespace A296092.P13640663758683776699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A325816 (n + 1) + A324213 (n + 1)).toNat

end

end A296092.P13640663758683776699

namespace A296092

/-- `A046523(A325816(n+1)+A324213(n+1))` -/
def P13640663758683776699.Spec : Prop :=
  ∀ n, P13640663758683776699.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P2862759626488914069

`A046523(A004277(n)+2-A235796(n+1))`
-/

namespace A296092.P2862759626488914069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A004277 n + (2 - A235796 (n + 1))).toNat

end

end A296092.P2862759626488914069

namespace A296092

/-- `A046523(A004277(n)+2-A235796(n+1))` -/
def P2862759626488914069.Spec : Prop :=
  ∀ n, P2862759626488914069.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P2861147651136143732

`A046523(A034448(n+1)+A048146(n+1)+1)`
-/

namespace A296092.P2861147651136143732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A034448 (n + 1) + (A048146 (n + 1) + 1)).toNat

end

end A296092.P2861147651136143732

namespace A296092

/-- `A046523(A034448(n+1)+A048146(n+1)+1)` -/
def P2861147651136143732.Spec : Prop :=
  ∀ n, P2861147651136143732.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P4675506400637879690

`A046523(A000593(n+1)+A146076(n+1)+1)`
-/

namespace A296092.P4675506400637879690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000593 (n + 1) + (A146076 (n + 1) + 1)).toNat

end

end A296092.P4675506400637879690

namespace A296092

/-- `A046523(A000593(n+1)+A146076(n+1)+1)` -/
def P4675506400637879690.Spec : Prop :=
  ∀ n, P4675506400637879690.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P15853162218290478888

`A046523(A007503(n+1)+1-A000005(n+1))`
-/

namespace A296092.P15853162218290478888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A007503 (n + 1) + (1 - A000005 (n + 1))).toNat

end

end A296092.P15853162218290478888

namespace A296092

/-- `A046523(A007503(n+1)+1-A000005(n+1))` -/
def P15853162218290478888.Spec : Prop :=
  ∀ n, P15853162218290478888.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P12797959296391321875

`A046523(A007955(n+1)+1-A076721(n+1))`
-/

namespace A296092.P12797959296391321875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A007955 (n + 1) + (1 - A076721 (n + 1))).toNat

end

end A296092.P12797959296391321875

namespace A296092

/-- `A046523(A007955(n+1)+1-A076721(n+1))` -/
def P12797959296391321875.Spec : Prop :=
  ∀ n, P12797959296391321875.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P9568695086932933081

`A046523(A009205(n+1)*A057020(n+1)+1)`
-/

namespace A296092.P9568695086932933081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A009205 (n + 1) * A057020 (n + 1) + 1).toNat

end

end A296092.P9568695086932933081

namespace A296092

/-- `A046523(A009205(n+1)*A057020(n+1)+1)` -/
def P9568695086932933081.Spec : Prop :=
  ∀ n, P9568695086932933081.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P5989938596509729958

`A046523(A076722(n+1)/A007955(n+1)+1)`
-/

namespace A296092.P5989938596509729958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A076722 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) + 1)).toNat

end

end A296092.P5989938596509729958

namespace A296092

/-- `A046523(A076722(n+1)/A007955(n+1)+1)` -/
def P5989938596509729958.Spec : Prop :=
  ∀ n, P5989938596509729958.a n = A296092 (n + 1)

end A296092

/-! ## A296092.P3135969455293754594

`A046523(A220846(n+1)/A007956(n+1)+1)`
-/

namespace A296092.P3135969455293754594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A220846 (n + 1) : ℚ) / (A007956 (n + 1) : ℚ) + 1)).toNat

end

end A296092.P3135969455293754594

namespace A296092

/-- `A046523(A220846(n+1)/A007956(n+1)+1)` -/
def P3135969455293754594.Spec : Prop :=
  ∀ n, P3135969455293754594.a n = A296092 (n + 1)

end A296092

/-!
# A296095: Integers represented by cyclotomic binary forms.

The programs for A296095, there is no canonical definition to state claims against.
-/

/-! ## A296095.P11453797408232376481

`lt[0, A299214(n+1)]+1`
-/

namespace A296095.P11453797408232376481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299214 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A296095.P11453797408232376481

/-! ## A296095.P4523054612704960887

`lt[0, A299214(A028310(n))]`
-/

namespace A296095.P4523054612704960887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299214 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296095.P4523054612704960887

/-! ## A296095.P11419741812889981425

`A020725(lt[0, A299214(n+1)])`
-/

namespace A296095.P11419741812889981425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A296095.P11419741812889981425

/-! ## A296095.P9354802082664140061

`lt[0, A299214(A000007(n)+n)]`
-/

namespace A296095.P9354802082664140061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299214 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296095.P9354802082664140061

/-! ## A296095.P17019215473942301307

`lt[1, A299214(A000038(n)+n)]`
-/

namespace A296095.P17019215473942301307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299214 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296095.P17019215473942301307

/-! ## A296095.P11223817577692824975

`lt[3, A299214(n/a(A000038(n)))]` with `a(0)=1`
-/

namespace A296095.P11223817577692824975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A299214 (SequenceMachineLib.roundAway ((n : ℚ) / (f2 (A000038 n).toNat : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296095.P11223817577692824975

/-! ## A296095.P2118430550956970111

`∪[A300331(n+1), A300332(n+1)]`
-/

namespace A296095.P2118430550956970111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296095.P2118430550956970111

/-!
# A296098: a(n) is the smallest triangular number (A000217) that can be represented as a product of k triangular numbers greater than 1 for all k = 1,2,...,n. a(n)=-1 if no such triangular number exists.

The programs for A296098, there is no canonical definition to state claims against.
-/

/-! ## A296098.P377959456924588847

`A084260(A342808(n+1)+A068555(n))`
-/

namespace A296098.P377959456924588847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084260 (A342808 (n + 1) + A068555 n).toNat

end

end A296098.P377959456924588847

