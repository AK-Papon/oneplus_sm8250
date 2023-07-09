/**
*	@file
*	@brief	�v�����C�u�����[							Ver 1.0.9.x
*/
/*============================================================================*/
#ifndef MEASUREMENT_LIBRARY_H_
#define MEASUREMENT_LIBRARY_H_


/*----------------------------------------------------------------------*/
/**
*	@brief	Mixing coefficient�imlCalMixCoef�֐��j�p�̓��͒l
*/
struct tagMlMixingValue
{
	double	radianX;
	double	radianY;

	double	hx45x;
	double	hy45x;
	double	hy45y;
	double	hx45y;

	UINT_8	hxsx;
	UINT_8	hysx;

	INT_32	hx45xL;		//! for Fixed point
	INT_32	hy45xL;		//! for Fixed point
	INT_32	hy45yL;		//! for Fixed point
	INT_32	hx45yL;		//! for Fixed point
};
/**
*	@brief	Mixing coefficient�imlCalMixCoef�֐��j�p�̓��͒l
*/
typedef	struct tagMlMixingValue		mlMixingValue;

/*----------------------------------------------------------------------*/
/**
*	@brief	Lineaity correction�imlCalLinearCorr�֐��j�p�̓��͒l
*/
struct tagMlLinearityValue
{
	INT_32	measurecount;	//! input parameter
	UINT_32	*dacX;			//! input parameter
	UINT_32	*dacY;			//! input parameter

	double	*positionX;
	double	*positionY;
	UINT_16	*thresholdX;
	UINT_16	*thresholdY;

	UINT_32	*coefAXL;		//! for Fixed point
	UINT_32	*coefBXL;		//! for Fixed point
	UINT_32	*coefAYL;		//! for Fixed point
	UINT_32	*coefBYL;		//! for Fixed point
};
/**
*	@brief	Linearity correction�imlCalLinearCorr�֐��j�p�̓��͒l
*/
typedef	struct tagMlLinearityValue		mlLinearityValue;

struct tagMlPoint
{
	double	X;
	double	Y;
};
/**
*	@brief	Linearity correction�imlCalLinearCorr�֐��j�p�̓��͒l
*/
typedef	struct tagMlPoint		mlPoint;


/*----------------------------------------------------------------------*/
/**
*	@brief	���C�u�����[�G���[�R�[�h
*/
enum tagErrorCode
{
	/**! �G���[�����Ő���I�� */
	ML_OK,

	/**! �������s�����������[�֘A�̃G���[ */
	ML_MEMORY_ERROR,
	/**! �����w��̃G���[ */
	ML_ARGUMENT_ERROR,
	/**! ������NULL���w�߂���Ă���G���[ */
	ML_ARGUMENT_NULL_ERROR,

	/**! �w�肳�ꂽ�f�B���N�g�������݂��Ȃ��G���[ */
	ML_DIRECTORY_NOT_EXIST_ERROR,
	/**! �摜�t�@�C�������݂��Ȃ��G���[ */
	ML_FILE_NOT_EXIST_ERROR,
	/**! �t�@�C��IO�G���[ */
	ML_FILE_IO_ERROR,
	/**! �����o�̃}�[�N���L�� */
	ML_UNDETECTED_MARK_ERROR,
	/**! �����ʒu�������}�[�N�����d���o���� */
	ML_MULTIPLEX_DETECTION_MARK_ERROR,
	/**! �K�v��DLL��������Ȃ��Ȃǎ��s�s�ȏ�� */
	ML_NOT_EXECUTABLE,

	/**! ����͂̉摜���L��G���[ */
	ML_THERE_UNANALYZED_IMAGE_ERROR,

	/**! ��L�ȊO�̃G���[ */
	ML_ERROR,
};

/**
*	@brief	���C�u�����[�G���[�R�[�h
*/
typedef	enum tagErrorCode	mlErrorCode;

#endif /* #ifndef MEASUREMENT_LIBRARY_H_ */
